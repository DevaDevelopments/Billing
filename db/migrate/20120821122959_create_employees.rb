class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string   :employeeid
      t.string   :employee_name
      t.boolean  :status, :default => true
      t.integer  :created_by
      t.integer  :updated_by
      t.timestamps
    end
  end
end
