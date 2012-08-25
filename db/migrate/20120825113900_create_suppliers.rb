class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string   :name
      t.string   :contact_person
      t.string   :supplier_id
      t.string   :cst_no
      t.string   :tin_no
      t.string   :status, :default => true
      t.string   :created_by
      t.string   :updated_by
      t.timestamps
    end
  end
end
