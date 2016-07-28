class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
        t.string :subject
        t.string :phone
        t.string :yourname
        t.string :email
        t.string :message
      t.timestamps
    end
  end
end
