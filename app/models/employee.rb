class Employee < ApplicationRecord
    validates :last_name,:presence=>true
    validates :first_name,:presence=>true
    validates :email,:presence=>true
    validates :dob,:presence=>true
    validates :city,:presence=>true
    validates :state,:presence=>true
    validates :country,:presence=>true
    validates :pincode,:presence=>true
    validates :password,:presence=>true

end
