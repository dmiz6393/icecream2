class SessionsController < ApplicationController
    def new
        @user=User.new
    end

    def create 
        user= User.find_by(email: params[:user][:email])
        if user && user.authenticate(password: params[:user][:password])
            session[:user_id]=user.id 
            redirect_to user_path
        end 
    end 

    def destroy 
        session.delete(:user_id)
        redirect_to login_path
    end 

    def cart

        @cart_ices = current_cart.map { |ic_id| IceCream.find(ic_id) }
    end

#     def add_ice_cream(ice_cream_id)
#     current_item = ice_cream_order.find_by(ice_cream_id: ice_cream_id)
#         if current_item
#             current_item.quantity += 1
#         else
#             current_item = ice_cream_order.build(ice_cream_id: ice_cream_id)
#         end
#     current_item
# >>>>>>> master
#     end

    def cart_destroy 
        session.delete(:cart)
        redirect_to ice_creams_path
    end 
end
