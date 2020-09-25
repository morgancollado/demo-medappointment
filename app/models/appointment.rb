class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor
    validates :appointment_time, :location, :doctor_id, :patient_id, presence: true
end
