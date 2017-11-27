class EmailSent < ApplicationRecord
  belongs_to :campaign
  belongs_to :client
end
