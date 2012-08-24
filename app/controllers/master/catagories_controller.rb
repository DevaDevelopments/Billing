class Master::CatagoriesController < ApplicationController
  
  def index
    @catagory = Catagory.new
    @action = 'create'
  end
  
  def edit
    @catagory = Catagory.find(params[:id])
    @action = 'update'
    render  :action => 'index'
  end
  
  def create
    @catagory = Catagory.new(params[:catagory])
    if @catagory.save
       render :action => 'index'
    end
  end
  
  def update
    @catorgy = Catagory.find(params[:id])
    if @catorgy.update_attributes(params[:catogary])
      @action = 'create'
      render :action => 'index'
    end
  end
  
   def destroy_catagory
   @catagory = Catagory.find(params[:catagory_id])
   @catagory.destroy
   flash[:notice] = "Catogary  removed sucessfully"
   render :action=> 'index'
   end
  
end
