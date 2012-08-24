class Master::CustomerController < ApplicationController
  
  def index
    @customer = Customer.new
    @action = 'create'
  end
  
  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      @customer.address_details.build(params[:address])
      @customer.save
       redirect_to(master_customer_index_path)
    end
  end
  
  def edit
    @customer = Customer.find(params[:id])
    @action = 'update'
    render :action=> 'index'
  end
  
  def update
    @customerr = Customer.find(params[:id])
    if @customerr.update_attributes(params[:customer])
      @customerr.address_details.build(params[:address])
      @customerr.save
      render :action => 'index'
    end
  end
  
 def destroy_cutomer
 @customer = Customer.find(params[:customer_id])
 @customer.destroy
 flash[:notice] = "Customer removed sucessfully"
 render :action=> 'index'
 end

end
