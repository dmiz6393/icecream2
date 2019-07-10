class IceCreamsController < ApplicationController
    
    def index
        @icecreams=IceCream.all
    end 

    def add
        @icecream=IceCream.find(params[:id])
        current_cart<<@icecream.id 
        redirect_to ice_creams_path
        flash[:notice]= "#{@icecream.flavor} has been added to your cart"
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
