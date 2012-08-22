class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string   :customer_id
      t.string   :name
      t.integer  :created_by
      t.integer  :updated_by
      t.boolean  :status, :default=>true
      t.timestamps
    end
  end
end
