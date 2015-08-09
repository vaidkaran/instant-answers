class AddFieldsToConsultants < ActiveRecord::Migration
  def change
    add_column :consultants, :fname, :string
    add_column :consultants, :lname, :string
  end
end
