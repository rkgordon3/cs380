# == Schema Information
#
# Table name: sales_people
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class SalesPerson < ActiveRecord::Base
  attr_accessible :name
  has_many :customers

  #
  # All orders for which this sales person is responsible
  def orders
  	#SELECT "orders".* FROM "orders" 
  	#  INNER JOIN "customers" ON "customers"."id" = "orders"."customer_id" 
  	#  WHERE "customers"."sales_person_id" = self.id

  	 Order.joins(:customer).where(customers: { sales_person_id: self.id})
  end
end
