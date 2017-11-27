class AddReadToEmailSents < ActiveRecord::Migration[5.0]
  def change
    add_column :email_sents, :read, :boolean, default: false
  end
end
