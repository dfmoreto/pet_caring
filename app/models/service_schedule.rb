class ServiceSchedule < ApplicationRecord
  belongs_to :service
  belongs_to :schedule
end
