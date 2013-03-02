# == Schema Information
#
# Table name: customers
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  phone           :string(255)
#  contact         :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  sales_person_id :integer
#

require 'spec_helper'

describe Customer do
    before(:each) do
    	@customer = Customer.create!(name: "Shoe Store")
    end

    it 'should exist' do
       Customer.find(@customer.id).name.should == 'Shoe Store'
    end


    it 'should have 2 orders' do
    	Order.create!(:quantity=>100, :customer_id => @customer.id)
    	Order.create!(:quantity=>200, customer_id: @customer.id)
    	@customer.orders(:force_reload=>:true).size.should == 2   
    end

    it 'should delete orders when customer deleted' do
        # Note: I have :dependent => :delete key on 
        # order's belongs_to association
        o1 = Order.create!(:quantity=>100, :customer_id => @customer.id)
        o2 = Order.create!(:quantity=>200, customer_id: @customer.id)
        @customer.delete
        # I have to :force_reload here, otherwise I will just be
        # test customer_id field of in-memory instace of o1 and o2
        o1.customer(:force_reload=>:true) == nil
        o2.customer(:force_reload=>:true) == nil
    end

end
