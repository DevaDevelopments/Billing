class UserController < ApplicationController
  layout 'menu',:except=>['login']
  respond_to :html, :xml, :json
  
  def index
  end
  
  def new
    @user = User.new
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


end
