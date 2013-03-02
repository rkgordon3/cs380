class AddSalesPersonIdToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :sales_person_id, :integer
  end
end
