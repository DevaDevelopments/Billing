class CreateCatagories < ActiveRecord::Migration
  def change
    create_table :catagories do |t|
      t.string      :code
      t.string      :name
      t.integer     :created_by
      t.integer     :updated_by
      t.boolean     :status ,:default=> true
      t.timestamps
    end
  end
end
