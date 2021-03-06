class DoctorsController < ApplicationController
    def index 
        @doctors = Doctor.all 

    end 

    def show 
        @doctor = Doctor.find(params[:id])

    end 

    def new 
        @doctor = Doctor.new
    end 

    def create 
        @doctor = Doctor.new(doctor_params)
        if @doctor.save
        
        redirect_to doctor_path(@doctor)
        else 
            render :new
        end 
    end 

    def edit 
        @doctor = Doctor.find(params[:id])
    end 

    def update 
        if @doctor = Doctor.update!(doctor_params)
        
        redirect_to doctor_path(@doctor)
        else 
            render :edit
        end 
    end 

    def delete
        @doctor = Doctor.find(params[:id])
        @doctor.destroy

        redirect_to doctors_path
    end 

    private 

    def doctor_params
        params.require(:doctor).permit(:username, :specialty, :email, :password_digest)
    end 
end