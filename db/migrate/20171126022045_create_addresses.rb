class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street
      t.string :house_number
      t.string :district
      t.string :city
      t.string :state
      t.string :additional_information
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
