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
      respond_to do |format|
        format.html { 
         @user.save ? redirect_to(user_index_path, :notice => "User created") : render(:new)
        }
        format.json { 
           @user.save ? render(:index) : render(:json => { :errors => @user.errors }, :status => :not_acceptable)
        }
      end
 end


end
