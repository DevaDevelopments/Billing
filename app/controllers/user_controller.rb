class UserController < ApplicationController

#  respond_to :html, :xml, :json
  
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
  end

  def send_login
    @user = User.new(params[:user])
    logged_in_user = @user.try_to_login
    if logged_in_user
      session[:user_id] = logged_in_user.id
      flash[:notice] = "You are now Logged in"
      redirect_to(user_index_path(@user), :status=> :found, :notice => "You hav loged in ") 
      
    else
      flash[:error] = "Incorrect Username and password"
      redirect_to login_user_index_path
    end
  end

  def menu
  end

  def create
     @user = User.new(params[:user])
     @user.email=  params[:user][:email]
     if @user.save
       redirect_to(user_index_path(@user), :status=> :found, :notice => "New User created sucessfully") 
     else
      render 'new'
     end
  end
 
 def destroy
  @user = User.find(params[:id])
  @user.destroy
  redirect_to(user_index_path(@user), :status=> :found, :notice => "User removed sucessfully")
 end

 def update
  @user = User.find(params[:id])
   @user.update_attributes(params[:user])
    if @user.update_attributes(params[:user])
      
       redirect_to(user_index_path(@user), :status=> :found, :notice => @user.name + "Details updated sucessfully") 
     else
      render 'edit'
     end
 end

 def logout
    session[:user_id] = nil
     flash[:notice] = "you are Logged out sucessfully"
     redirect_to :action => 'login'
  end



end
