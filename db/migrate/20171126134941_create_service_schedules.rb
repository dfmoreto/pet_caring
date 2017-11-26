class CreateServiceSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :service_schedules do |t|
      t.references :service, foreign_key: true
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
