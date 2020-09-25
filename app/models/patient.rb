class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    validates :username, :password_digest, :email, :height, :weight, :conditions, :age, presence: true
end
