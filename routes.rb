    customer_orders GET    /customers/:customer_id/orders(.:format)          orders#index
                    POST   /customers/:customer_id/orders(.:format)          orders#create
 new_customer_order GET    /customers/:customer_id/orders/new(.:format)      orders#new
edit_customer_order GET    /customers/:customer_id/orders/:id/edit(.:format) orders#edit
     customer_order GET    /customers/:customer_id/orders/:id(.:format)      orders#show
                    PUT    /customers/:customer_id/orders/:id(.:format)      orders#update
                    DELETE /customers/:customer_id/orders/:id(.:format)      orders#destroy
          customers GET    /customers(.:format)                              customers#index
                    POST   /customers(.:format)                              customers#create
       new_customer GET    /customers/new(.:format)                          customers#new
      edit_customer GET    /customers/:id/edit(.:format)                     customers#edit
           customer GET    /customers/:id(.:format)                          customers#show
                    PUT    /customers/:id(.:format)                          customers#update
                    DELETE /customers/:id(.:format)                          customers#destroy
