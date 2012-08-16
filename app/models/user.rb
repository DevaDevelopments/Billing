class User < ActiveRecord::Base
  validates_presence_of :email,:password,:name
  validates_uniqueness_of :name
  validates_confirmation_of :password,:email
  
   attr_accessor    :password
   
   def before_create
   self.hashed_pasword = User.hash_pasword(self.password)
    self.hashed_password = User.hash_pasword(self.password)
  end
  
  def after_create
    password = nil
  end
  
  def self.login(name,password)
    hashed_pasword  = hash_pasword(password || "")
    self.find(:first,:conditions =>["name =? and hashed_pasword =?",name,hashed_pasword])
  end
  
  def try_to_login
    User.login(self.name,self.password)
  end
  
  private  #------------------------
  
   def self.hash_pasword(password)
     Digest::SHA1.hexdigest(password)
   end

end
