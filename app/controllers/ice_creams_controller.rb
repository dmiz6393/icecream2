class IceCreamsController < ApplicationController
    
    def index
        @icecreams=IceCream.all
    end 

    def add
        @icecream=IceCream.find(params[:ice_cream][:id])
        current_cart<<@icecream.id 
        redirect_to ice_creams_path
        flash[:notice]= "#{@icecream.flavor} has been added to your cart"
        
    end 

end
