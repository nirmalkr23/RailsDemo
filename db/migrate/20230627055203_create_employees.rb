class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :dob
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :password
      t.timestamps
    end
  end
  
end
