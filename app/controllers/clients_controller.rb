class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update]
#  authorized @prescription, index?


  def create
  	@client = Client.new(client_params)
  	@client.user = current_user
  	@client.save
  	if @client.save
  		redirect_to client_path(@client)
  	else
  		raise
  		render :new
  	end
  end

  def new
  	@client = Client.new
  end

  def edit
  end

  def index
  end

  def update
  	if @client = Client.update(client_params)
      redirect_to client_path(@client)
    else
      render :edit
    end
  end

  def show
  	@current_user = current_user
  	@prescriptions = Prescription.all
  end

  def client_params
		params.require(:client).permit(:first_name, :last_name, :birthdate, :phone)
  end

  def set_retailer
    @client = Client.find(params[:id])
  end
end
