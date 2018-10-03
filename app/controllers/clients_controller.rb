class ClientsController < ApplicationController
  before_action :set_retailer, only: [:show, :edit, :update]
  authorized @prescription, index?


  def create
  	@client = Client.new(client_params)
  	@client.user = current_user
  	if @client.save
  		redirect_to client_path(client)
  	else
  		render :new
  	end
  end

  def new
  	@client = Client.new
  end

  def edit
  end

  def update
  	if @client = Client.update(client_params)
      redirect_to client_path(@client)
    else
      render :edit
    end
  end

  def show
  end

  def client_params
		params.require(:client).permit(:first_name, :last_name, :birthdate, :phone)
  end

  def set_retailer
    @rclient = Client.find(params[:id])
  end
end
