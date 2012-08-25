class Master::CatagoriesController < ApplicationController
  
  def index
    @catagory = Catagory.new
  end
  
  def edit
    @catagory = Catagory.find(params[:id])
    @action = 'update'
    render  :action => 'index'
  end
  
  def create
    @catagoryy = Catagory.new(params[:catagory])
    if @catagoryy.save && @catagoryy.update_code
      flash[:notice]= " Catagory Created Sucessfully" 
       redirect_to :action => 'index'
    end
  end
  
  def update
    @catorgy = Catagory.find(params[:id])
    if @catorgy.update_attributes(params[:catogary])
      render :action => 'index'
    end
  end
  
   def destroy_catagory
   @delete_catagory = Catagory.find(params[:catagory_id])
   @delete_catagory.destroy
   flash[:notice] = "Catogary  removed sucessfully"
   redirect_to :action=> 'index'
   end
  
end
