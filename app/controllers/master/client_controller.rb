class Master::ClientController < ApplicationController
  def index
    @client = Client.all
  end

  def show
  end
  
  def new
    @client = Client.new
  end
  
  def create
    @client = Client.new(params[:client])
    if @client.save
       @client.address_details.build(params[:address])
       @client.save
       redirect_to(master_client_index_path(@client), :status=> :found, :notice => "New Client created sucessfully") 
     else
      render 'new'
     end
  end
  
  def edit
    @client = Client.find(params[:id])
  end
  
  def destroy_client
    @client = Client.find(params[:client_id])  
    @client.destroy
    redirect_to(master_client_index_path(@client), :status=> :found, :notice => "Client Removed Sucessfully")
  end
  
  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
       @client.address_details.build(params[:address])
       @client.save
       redirect_to(master_client_index_path(@client),:status=> :found, :notice => "Updated Sucessfully")
    end
  end
  
end
