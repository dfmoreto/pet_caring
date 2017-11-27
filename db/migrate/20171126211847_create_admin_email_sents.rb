class CreateAdminEmailSents < ActiveRecord::Migration[5.0]
  def change
    create_table :email_sents do |t|
      t.references :campaign, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
