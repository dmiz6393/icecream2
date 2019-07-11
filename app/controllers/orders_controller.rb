class OrdersController < ApplicationController

    def cart
        @cart_creams = current_cart.map { |ic_id| IceCream.find(ic_id) }
    end


    def checkout
        @user_id= @current_user.id
        @order= Order.create(user_id: @user_id)
        current_cart.each {|ice_cream_item| IceCreamOrder.create(ice_cream_id:ice_cream_item["ice_cream_id"], order_id: @order.id,quantity:ice_cream_item["quantity"])}
        current_cart.clear
        redirect_to your_order_path(@order)
    end 


    def index
        @user_id= @current_user.id
        @my_orders= Order.all.where(user_id: @user_id)
    end 

    def show
        @my_recent_order= Order.find(params[:id]).ice_creams
    end 


    def all_orders
        @orders=Order.all 
    end 

end
