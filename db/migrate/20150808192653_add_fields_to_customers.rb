class AddFieldsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :fname, :string
    add_column :customers, :lname, :string
  end
end
