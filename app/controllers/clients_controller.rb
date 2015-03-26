class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(params[:client].permit(:first_name, :last_name, :email, :phone, :address))
    if @client.save
      redirect_to @client
    else
      render "new"
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

 end
