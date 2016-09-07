class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :address
      t.text :phone_number
      t.text :email_address

      t.timestamps
    end
  end
end
