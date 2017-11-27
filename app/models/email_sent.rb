class EmailSent < ApplicationRecord
  belongs_to :campaign
  belongs_to :client

  scope :read, -> { where(read: true) }
end
