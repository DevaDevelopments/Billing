class ApplicationController < ActionController::Base
 protect_from_forgery
 #before_filter :authorize_access , :except => [:login, :send_login]
   layout 'menu',:except=>['login'] 
  
  
  def get_code
    Uniqueid.where(:class_name => self.name).last
  end  
  private #-----------------------
  
  
  def authorize_access
   if not session[:user_id]
      flash[:message] = "please Login to access other links"
      redirect_to(:controller => 'user', :action => 'login')
      return  false
   end  
 end
end
