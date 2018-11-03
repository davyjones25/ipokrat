class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update]
#  authorized @prescription, create?, index?

  def create
  	@doctor = Doctor.new(doctor_params)
  	@doctor.user = current_user
  	if @doctor.save
  		redirect_to doctor_path(@doctor)
  	else
  		render :new
  	end
  end

  def new
  	@doctor = Doctor.new
  end

  def edit
  end

  def update
  	if @doctor = Doctor.update(doctor_params)
      redirect_to doctor_path(@doctor)
    else
      render :edit
    end
  end

  def show
  	@current_user = current_user
  	@prescription = Prescription.new
  end

  def doctor_params
		params.require(:doctor).permit(:user_id, :first_name, :last_name, :rpps, :am, :address, :phone, :speciality)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
