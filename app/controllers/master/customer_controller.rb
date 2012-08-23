class Master::CustomerController < ApplicationController
  
  def index
    @customer = Customer.new
  end
  
  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      @customer.address_details.build(params[:address])
      @customer.save
       redirect_to(master_customer_index_path)
    end
  end
  
 def destroy_customer
 @customer = Customer.find(params[:id])
 @customer.destroy
 flash[:notice] = "Customer removed sucessfully"
 render :action=> 'index'
 end

end
