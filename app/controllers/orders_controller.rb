class OrdersController < ApplicationController

    def checkout
        @order= current_cart
    end 

#    def update
#     @order.update(order_params)
#     session[:order_id]=nil 
#    end 

  private

  def order_params
    params.require(:order).permit(
      :id,
      :user_id, :ice_cream_shop_id)

  end

   def order_params
    params.require(:order).permit(
      user_ids:,
      ice_cream_ids:[],
      ice_creams_attributes:[:flavor],
      total_price:)
  end


end
