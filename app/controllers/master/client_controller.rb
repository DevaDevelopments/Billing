class Master::ClientController < ApplicationController
  def index
    @client = Client.new
  end

  def create
    @client = Client.new(params[:client])
    if @client.save && @client.update_code
       @client.address_details.build(params[:address])
       @client.save
       redirect_to(master_client_index_path(@client), :status=> :found, :notice => "New Client created sucessfully") 
     else
      render 'new'
     end
  end
  
  def edit
    @client = Client.find(params[:id])
    @address = @client.address_details.first
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
    @clientt = Client.find(params[:id])
    if @clientt.update_attributes(params[:client])
       @clientt.address_details.build(params[:address])
       @clientt.save
       flash[:notice] = "Client Updated sucessfully"
       render :action => 'index'
    end
  end
  
end
