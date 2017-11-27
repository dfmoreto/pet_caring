class CampaignJob < ApplicationJob
  queue_as :emails

  def perform(campaign, client)
    begin
      MarketingMailer.campaign(client, campaign.title, campaign.body).deliver_now
      campaign.emails_sent.create!(client: client)
    rescue => e
    end
  end
end
