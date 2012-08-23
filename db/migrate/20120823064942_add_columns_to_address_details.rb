class AddColumnsToAddressDetails < ActiveRecord::Migration
  def change
    add_column :address_details, :pincode, :integer
  end
end
