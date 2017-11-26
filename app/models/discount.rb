class Discount < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, uniqueness: true, presence: true
  validates :value, uniqueness: true, presence: true
  validates :kind, presence: true

  validate :percentage_value, if: :percentage?

  enum kind: { cash: 1, percentage: 2 }

  def fae_display_field
    title
  end


  private


  def cash_valeu
    self
  end


  def percentage_value
    errors.add(:value, "can't be more than 100%") if self.value > 100
  end
end
