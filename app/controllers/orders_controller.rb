class OrdersController < ApplicationController

    def cart
        @cart_creams = current_cart.map { |ic_id| IceCream.find(ic_id) }
    end


    def checkout
        @user_id= @current_user.id
        @order= Order.create(user_id: @user_id) 
        current_cart.each { |ic_id| IceCreamOrder.create(ice_cream_id: ic_id, order_id: @order.id)}
        totalprice= @order.total_price
        redirect_to order_path(@order)
    end 

    def show
       @order= Order.find params[:id]
       @cart_ices = current_cart.map { |ic_id| IceCream.find(ic_id) }
    end 


    def index
        @my_orders = Order.all.where(user_id: @current_user.id)
    end 


    def all_orders
        @orders=Order.all 
    end 

end
