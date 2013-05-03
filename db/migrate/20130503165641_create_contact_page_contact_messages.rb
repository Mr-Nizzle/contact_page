class CreateContactPageContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_page_contact_messages do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :message

      t.timestamps
    end
  end
end
