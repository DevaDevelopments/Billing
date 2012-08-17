class UserController < ApplicationController
  layout 'menu',:except=>['login']
  respond_to :html, :xml, :json
  
  def index
    @user = User.all
  end
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def login
    mnbb
  end

  def menu
  end

  def create
     @user = User.new(params[:user])
     if @user.save
       redirect_to(user_index_path(@user), :status=> :found, :notice => "New User created sucessfully") 
     else
      render 'new'
     end
  end
 
 def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to(user_index_path(@user), :status=> :found, :notice => "New removed sucessfully")
end

def update
  @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
       redirect_to(user_index_path(@user), :status=> :found, :notice => @user.name + "Details updated sucessfully") 
     else
      render 'edit'
     end
  
end



end
