class Schedule < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :service_schedules, dependent: :destroy
  has_many :services, through: :service_schedules

  validates :date, presence: true
  validates :hour, presence: true
  validates :services, presence: true

  def self.for_fae_index
    order(:date)
  end

  def fae_display_field
    date
  end



end
