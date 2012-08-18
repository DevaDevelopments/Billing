class AddressDetails < ActiveRecord::Base
  #-------------------------------------ASSOCIATION BLOCK--------------------------------
  belongs_to :addressable, :polymorphic => true
  belongs_to :city
  belongs_to :country
  belongs_to :state
end
