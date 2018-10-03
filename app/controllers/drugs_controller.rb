class DrugsController < ApplicationController
  def create
  	@prescription = Prescription.find(params[:prescription_id])
    @drug = Drug.new(drug_params)
    @drug.prescription = @prescription
    if @drug.save
      redirect_to prescriptions_show_path(@drug.prescription)
    else
      raise
    end
  end

  def new
  	@drug = Drug.new
  	@prescription = Prescription.find(params[:prescription_id])
  end

  def drug_params
  	params.require(:drug).permit(:name, :posology)
  end
end
