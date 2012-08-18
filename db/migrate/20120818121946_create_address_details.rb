class CreateAddressDetails < ActiveRecord::Migration
  def change
    create_table :address_details do |t|
    t.integer     :addressable_id
    t.string      :addressable_type
    t.string      :address_1   
    t.string      :address_2
    t.integer     :city_id
    t.integer     :state_id    
    t.integer     :country_id
    t.integer     :mobile_no, :length => 10   
    t.string      :email
    t.string      :referance_1
    t.integer     :created_by
    t.integer     :update_by
    t.string      :website     
    t.boolean     :status, :default=> true
    t.timestamps
    end
  end
end
