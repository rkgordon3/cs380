# == Schema Information
#
# Table name: sales_people
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe SalesPerson do
  it 'should have two orders' do
  	s = SalesPerson.create(name: "Bill")
  	c1 = Customer.create!(name: "Toy Store", contact: "Ed", sales_person_id: s.id)
  	c1.orders << [Order.new(quantity: 100, total: 1000, customer_id: c1.id),
  				  Order.new(quantity: 1200, total:45, customer_id: c1.id) ]
  	c1.save!

  	s.orders.size.should == 2
  end

end
