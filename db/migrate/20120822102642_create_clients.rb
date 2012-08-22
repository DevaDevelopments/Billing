class CreateClients < ActiveRecord::Migration
  def up
   create_table :clients do |t|
      t.string   :name
      t.string   :contact_person
      t.string   :clientid
      t.string   :cst_no
      t.string   :tin_no
      t.string   :status, :default => true
      t.string   :created_by
      t.string   :updated_by
      t.timestamps
    end
  end
end
