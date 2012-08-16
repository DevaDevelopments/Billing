class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string   :name
      t.string   :password
      t.boolean  :is_admin, :default => false
      t.integer  :city_id
      t.string   :address
      t.boolean  :status ,:default=>false
      t.string   :hashed_password
      t.string   :email
      t.integer  :created_by
      t.integer  :updated_by
      t.timestamps
    end
  end
end
