class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|

      t.datetime :appointment_time
      t.string :location 
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
