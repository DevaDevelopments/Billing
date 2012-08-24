class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_code
      t.string  :item_name
      t.integer :catagory_id
      t.integer :created_by
      t.integer :updated_by
      t.boolean :status ,:default=> true
      t.timestamps
    end
  end
end
