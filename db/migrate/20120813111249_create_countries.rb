class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string   :name
      t.string   :status
      t.timestamps
    end
  end
end
