class SessionsController < ApplicationController
    def new
        @user=User.new
    end

    def create 
        user= User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            session[:user_id]=user.id 
            redirect_to ice_creams_path
        else
            flash[:errors] = ["Sorry, that account is not found"]
            redirect_to login_path
        end
    end

    def destroy 
        session.delete(:user_id)
        session.delete(:cart)
        redirect_to login_path
    end 

    def cart
        # @cart_ices = current_cart.map { |ic_id| IceCream.find(ic_id) }
        @cart = current_cart
    end


    def cart_destroy 
        session.delete(:cart)
        redirect_to ice_creams_path
    end 

end
