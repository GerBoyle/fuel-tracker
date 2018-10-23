class UserFuelsController < ApplicationController
    
    def create
        fuel = Fuel.first
        @user_fuel = UserFuel.create(user: current_user, fuel: fuel)
        @fuel.save
        redirect_to fuel_path(@fuel)
    end
    
    def destroy
        fuel = Fuel.find(params[:id])
        @user_fuel = UserFuel.where(user_id: current_user.id, fuel_id: fuel.id).first
        @user_fuel.destroy
        flash[:notice] = "Log was successfully removed"
        redirect_to fuels_path
    end

end
