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
        @flavors = current_cart.map { |ic_id| IceCream.find(ic_id).flavor }
    end
end
