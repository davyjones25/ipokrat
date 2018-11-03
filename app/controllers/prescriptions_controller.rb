class PrescriptionsController < ApplicationController
  def create
    @doctor = Doctor.find(params[:doctor_id])
    @prescription = Prescription.new(prescription_params)
    @prescription.doctor_id = @doctor.id
    @prescription.client_id = @doctor.client_id
    authorize @prescription
    if @prescription.save
      redirect_to clients_show_path(@doctor)
    else
      render 'doctors/show'
    end
  end

  def new
  	@prescription = Prescription.new
    @prescription.client = 
  end

  def destroy
  end

  def index
  end

  def show
      @current_user = current_user
  end

  private

  def prescription_params
    params.require(:prescription).permit(:date, :length_of_treatment, :renewable, :refundable)
  end

  def set_prescription
    @prescription = Prescription.find(params[:id])
    authorize @prescription
  end
end
