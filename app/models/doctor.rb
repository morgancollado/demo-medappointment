class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments
    validates :username, :email, :password_digest, presence: true, uniqueness: true
    has_secure_password
end
