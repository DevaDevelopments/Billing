require 'autogen'

class User < ActiveRecord::Base
   has_many :address_details, :as => 'addressable'
   
   attr_accessor    :password
   attr_accessible  :name,:password

  
  validates_presence_of :email,:password,:name
  validates_uniqueness_of :name
  validates_confirmation_of :password,:email
   
   
   before_create :change_password
   after_create :unchange_password
   

   def change_password
    self.hashed_password = User.hash_pasword(self.password)
  end
  
  def unchange_password
    password = nil
  end
  
  def self.login(name,password)
    hashed_pasword  = hash_pasword(password || "")
    self.find(:first,:conditions =>["name =? and hashed_password =?",name,hashed_pasword])
  end
  
  def try_to_login
    User.login(self.name,self.password)
  end
  
  private  #------------------------
  
   def self.hash_pasword(password)
     Digest::SHA1.hexdigest(password)
   end

end
