# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.create!([ { name: 'shoes' } , { name: 'boots' } , { name: 'socks'} ])
item_names = ["shoes", "boots", "socks"]
2.times { |i|
    c = Customer.create!(name: "customer_#{i.to_s}", contact: "contact_#{i.to_s}", phone: "123-1234")
    3.times { |i| 
       o = Order.new(customer_id: c.id, quantity: 10, total: 100, item_id: Item.find_by_name(item_names[i]).id)
       c.orders << o
    }
    c.save!
}

s = SalesPerson.create!(name: "Bill")

c0 = Customer.create!(name: "Customer0", sales_person_id: s.id)

c0.orders << [Order.new(quantity: 100, total: 1000, customer_id: c0.id),
  				  Order.new(quantity: 1200, total:45, customer_id: c0.id) ]
c0.save!
