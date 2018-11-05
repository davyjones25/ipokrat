class RetailersController < ApplicationController
  before_action :set_retailer, only: [:show, :edit, :update]
#  authorized @prescription, update?, index?


  def create
  	@retailer = Retailer.new(retailer_params)
  	@retailer.user = current_user
  	if @retailer.save
  		redirect_to retailer_path(@retailer)
  	else
  		render :new
  	end
  end

  def new
  	@retailer = Retailer.new
  end

  def edit
  end

  def update
  	if @retailer = Retailer.update(retailer_params)
      redirect_to retailer_path(@retailer)
    else
      render :edit
    end
  end

  def show
  end

  def retailer_params
		params.require(:retailer).permit(:user_id, :name, :siret, :address, :phone)
  end

  def set_retailer
    @retailer = Retailer.find(params[:id])
  end
end
