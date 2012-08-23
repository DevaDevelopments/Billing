class Employee < ActiveRecord::Base
    has_many :address_details, :as => 'addressable', :dependent => :delete_all 
end
