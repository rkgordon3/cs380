require File.dirname(__FILE__) + '/../spec_helper'


describe Order do
	before(:each) do
	   @c = Customer.create!(name: "dummy")
	end
	it "should report big orders" do
	 
	  Order.create!(total: 600, customer_id: @c.id)
	  Order.create!(total: 499, customer_id: @c.id)
	  Order.big_orders.size == 1
	end
	it "should report 2 big orders" do
		Order.create!(total: 600, customer_id: @c.id)
	 	Order.create!(total: 499, customer_id: @c.id)
	  	Order.big_orders(400).size == 2	  
	end
  
end