class CreateAddressDetails < ActiveRecord::Migration
  def change
    create_table :address_details do |t|

      t.timestamps
    end
  end
end
