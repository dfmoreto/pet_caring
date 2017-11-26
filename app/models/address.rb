class Address < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :client, touch: true

  validates :street, presence: true
  validates :house_number, presence: true
  validates :district, presence: true
  validates :city, presence: true
  validates :state, presence: true

  def fae_nested_parent
    :client
  end

  def fae_display_field

  end


  belongs_to :client
end
