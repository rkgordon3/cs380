module OrdersHelper
	def customer_name(order)
  		order.customer.name unless order.customer.nil?
  	end
end
