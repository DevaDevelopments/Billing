class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string   :employeeid
      t.string   :employee_name
      t.boolean  :status, :default => true
      t.string   :created_by
      t.string   :updated_by
      t.timestamps
    end
  end
end
