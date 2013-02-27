module CustomersHelper
	def orders_tag(customer) 
		orders = customer.orders 
		if orders.nil?
			return "No orders"
		end
		out = %Q[<table class='table table-striped'><tr><td>Item</td><td>Quantity</td><td>Total</td></tr>]
		orders.each { |o| 
		   out += %Q[<tr><td>#{o.item}</td><td>#{o.quantity}</td><td>#{o.total}</td></tr>]
		}
		out += %Q[</table>]
		out.html_safe
	end

	def customer_index_row_div_id(customer)
		"customer_#{customer.id}"
	end
end
