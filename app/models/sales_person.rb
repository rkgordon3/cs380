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
  #
  def orders
  	#SELECT "orders".* FROM "orders" 
  	#  INNER JOIN "customers" ON "customers"."id" = "orders"."customer_id" 
  	#  WHERE "customers"."sales_person_id" = self.id

  	 Order.joins(:customer).where(customers: { sales_person_id: self.id})

    # The above query is functionally equivalent to 
    # orders = []
    # customers.each { |c|
    #     orders << c.orders.flatten
    # }
    # but it is NOT equivalent performance-wise. The query above hits
    # the database once. The second form hits the database 1+N times
    # where N is number of customers associated with this sales person.
    # (Note: some improvements could maybe be gained via caching, but
    # there is no need for that given alternative above).
    #
    # Performance aside, the second solution just looks ugly. Stay away from 
    # such approaches.
  end
end
