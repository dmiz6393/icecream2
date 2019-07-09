class ApplicationController < ActionController::Base

    helper_method :logged_in?
    helper_method :authorize_user 
    helper_method :current_cart
    before_action :set_current_user 

    def current_cart 
        session[:cart]||=[]
    end 

    def set_current_user 
        @current_user= session[:user_id] ? User.find(session[:user_id]):nil
    end 

    def logged_in?
        !!@current_user
    end 

    def authorize_user
        if !logged_in?
            flash[:notice]= "You must be logged in to view that page"
            redirect_to login_path
        end
    end 

end
