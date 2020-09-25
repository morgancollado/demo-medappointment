class AppointmentsController < ApplicationController

    def index 
        @appointments = Appointment.all 

    end 

    def show 
        @appointment = Appointment.find(params[:id])

    end 

    def new 
        @appointment = Appointment.new
    end 

    def create 
        @appointment = Appointment.new(appointment_params(:appointment_time, :location, :doctor_id, :patient_id))
        if @appointment.save
        
        redirect_to appointment_path(@appointment)
        else 
            render :new
        end 
    end 

    def edit 
        @appointment = Appointment.find(params[:id])
    end 

    def update 
        if @appointment = Appointment.update!(appointment_params(:appointment_time, :location, :doctor_id, :patient_id))
        
        redirect_to appointment_path(@appointment)
        else 
            render :edit
        end 
    end 

    def delete
        @appointment = Appointment.find(params[:id])
        @appointment.destroy

        redirect_to appointments_path
    end 

    private 

    def appointment_params(*args)
        params.require(:appointment).permit(*args)
    end 
end