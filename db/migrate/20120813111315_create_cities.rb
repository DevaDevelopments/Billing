class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string  :name
      t.integer :state_id
      t.string  :zip_code
      t.string  :std_code
      t.string  :status
      t.timestamps
    end
  end
end
