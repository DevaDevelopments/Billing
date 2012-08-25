class RenameItemCodeColumn < ActiveRecord::Migration
   def self.up
    change_table :items do |t|
      t.change :item_code, :string
    end
  end

  def self.down
    change_table :items do |t|
      t.change :item_code, :integer
    end
  end
end
