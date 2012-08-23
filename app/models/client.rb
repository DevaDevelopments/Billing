class Client < ActiveRecord::Base
  has_many :address_details, :as => 'addressable'
end
