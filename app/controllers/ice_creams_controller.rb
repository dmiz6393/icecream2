class IceCreamsController < ApplicationController
    
    before_action :authorize_user

    def index
        @icecreams=IceCream.all
    end 

    def add
        new_item_id = current_cart.last ? current_cart.last["item_id"] + 1 : 1

        current_cart << { 
            item_id: new_item_id,
            ice_cream_id: params[:id],
            quantity: 1,
        }

        redirect_to ice_creams_path
        @ice_cream = IceCream.find(params[:id])
        flash[:notice]= "#{@ice_cream.flavor} has been added to your cart"
    end 


    def delete_item
        session[:cart] = current_cart.select do |item_hash|
            item_hash["item_id"] != params[:item_id].to_i
        end
        redirect_to cart_path
        flash[:notice]= "This item has been removed from your cart"
    end

#     def add_ice_cream(ice_cream_id)
#     current_item = ice_cream_order.find_by(ice_cream_id: ice_cream_id)
#         if current_item
#             current_item.quantity += 1
#         else
#             current_item = ice_cream_order.build(ice_cream_id: ice_cream_id)
#         end
#     current_item
#     end
end
