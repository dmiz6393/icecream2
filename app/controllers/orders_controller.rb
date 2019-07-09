class OrdersController < ApplicationController



    def cart
        @cart_creams = current_cart.map { |ic_id| IceCream.find(ic_id) }
    end

    def checkout
        @order = []
        user_id = session[:user_id]
        @cart_creams.each do |ic| 
        @order << ic
        end
    end


    def cart_flavors
        @flavors = @cart_creams.map {|ic| ic.flavor }
    end

#    def update
#     @order.update(order_params)
#     session[:order_id]=nil 
#    end 

  private

   def order_params
    params.require(:order).permit(
      user_id:
      ice_cream_ids:[]
      ice_creams_attributes:[:flavor]
      total_price:)
  end


end
