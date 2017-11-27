class Campaign < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true
  validates :body, presence: true
  has_many :campaign_clients, dependent: :destroy
  has_many :clients, through: :campaign_clients
  has_many :emails_sent, class_name: "EmailSent", dependent: :destroy

  after_save :schedule_emails

  def fae_display_field
    title
  end

  def schedule_emails
    Client.all.each do |client|
      CampaignClient.create(campaign: self, client: client)
      CampaignJob.perform_later self, client
    end
  end
end
