class AddressDetail < ActiveRecord::Base
  belongs_to :addressable, :polymorphic => true

end
