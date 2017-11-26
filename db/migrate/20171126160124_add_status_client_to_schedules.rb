class AddStatusClientToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :status, :integer
    add_reference :schedules, :client, foreign_key: true
  end
end
