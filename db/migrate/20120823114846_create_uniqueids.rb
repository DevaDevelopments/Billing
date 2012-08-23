class CreateUniqueids < ActiveRecord::Migration
  def change
    create_table :uniqueids do |t|
      t.string  :class_name
      t.string  :prefix
      t.string  :suffix
      t.integer :current_value
      t.integer :start_value
      t.integer :increment_value
      t.string  :status, :default=>true
      t.timestamps
    end
  end
end
