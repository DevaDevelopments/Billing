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
    @address = AddressDetail.new(params[:address])
    if @client.save and @address.save
       redirect_to(master_client_index_path(@client), :status=> :found, :notice => "New Client created sucessfully") 
     else
      render 'new'
     end
  end
  
  def edit
    @client = Client.find(params[:id])
  end
  
  def destroy
    raise params.inspect
    @client = Client.find(params[:id])  
    @client.destroy
    redirect_to(master_client_index_path(@client), :status=> :found, :notice => "Client Removed Sucessfully")
  end
  
end
