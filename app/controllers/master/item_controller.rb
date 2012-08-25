class Master::ItemController < ApplicationController
    # include CommanMethods
  def index
    @item = Item.new
    
  end
  
  def new
    
  end
  
  def create
    @item = Item.new(params[:item])
    if @item.save
      @item.update_code
      redirect_to :action => 'index',:notice=> @item.item_name + " Created Successfully"
    end
  end
  
  def edit
    @item = Item.find(params[:id])
    @action = 'update'
    render :action=> 'index'
  end
  
  def update
    @itemm = Item.find(params[:id])
    if @itemm.update_attributes(params[:item])
     redirect_to :action => 'index'
    end
  end
  
 def destroy_item
   @item = Item.find(params[:item_id])
   @item.destroy
   flash[:notice] = "Item removed sucessfully"
   redirect_to :action=> 'index'
 end
  
end
