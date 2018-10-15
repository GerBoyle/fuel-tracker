class UserFuelsController < ApplicationController
    
    def create
        fuel = Fuel.first
        @user_fuel = UserFuel.create(user: current_user, fuel: fuel)
        @fuel.save
        redirect_to fuel_path(@fuel)
    
    end

end
