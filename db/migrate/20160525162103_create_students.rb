class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :emergency_contact_phone
      t.string :emergency_contact_name

      t.timestamps null: false
    end
  end
end
