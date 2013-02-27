class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :item
      t.integer :customer_id

      t.timestamps
    end
  end
end
