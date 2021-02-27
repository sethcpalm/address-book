class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
