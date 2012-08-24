class Master::ClientController < ApplicationController
  def index
    @client = Client.new
    @action = 'create'
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
    @action = 'update'
    render :action=> 'index'
  end
  
  def destroy_client
    @client = Client.find(params[:client_id])  
    @client.destroy
    flash[:notice] = "Client removed sucessfully"
    render :action=> 'index'
  end
  
  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(params[:client])
       @client.address_details.build(params[:address])
       @client.save
       flash[:notice] = "Client Updated sucessfully"
       render :action => 'index'
    end
  end
  
end
