class OrdersController < ApplicationController

    def checkout
        @order= current_cart
    end 

#    def update
#     @order.update(order_params)
#     session[:order_id]=nil 
#    end 



end
