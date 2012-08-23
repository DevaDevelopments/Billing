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
       redirect_to(master_client_index_path(@client), :status=> :found, :notice => "New Client created sucessfully") 
     else
      render 'new'
     end
  end
  
end
