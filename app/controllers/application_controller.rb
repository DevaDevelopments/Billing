class ApplicationController < ActionController::Base
  protect_from_forgery
 #before_filter :authorize_access , :except => [:login, :send_login]
  
  private #-----------------------
  
  
  def authorize_access
   if not session[:user_id]
      flash[:message] = "please Login to access other links"
      redirect_to(:controller => 'user', :action => 'login')
      return  false
   end  
 end
end
