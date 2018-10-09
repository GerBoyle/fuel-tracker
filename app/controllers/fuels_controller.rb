class FuelsController < ApplicationController
    before_action :set_fuel, only: [:edit, :update, :show, :destroy]
    #before_action :require_same_user, only: [:edit, :update, :show, :destroy, :index]
    
   def new
      @fuel = Fuel.new 
   end
    
   def show
   end
   
   def edit
   end
   
   def index
         @fuels=Fuel.all
   end
   
   def update
      if @fuel.update(fuel_params)
         flash[:notice] = "Fuel log was successfully updated"
         redirect_to fuel_path(@fuel)
      else
         render edit
      end
   end
    
   def create
      @fuel = Fuel.new(fuel_params)
      @fuel.user = User.first
      @fuel.save
      redirect_to fuel_path(@fuel)
   end
   
   def destroy
      @fuel.destroy
      flash[:notice] = "Fuel log was successfully deleted"
      redirect_to fuels_path
   end

   private
   def set_fuel
      @fuel = Fuel.find(params[:id])
   end
   
   def fuel_params
      params.require(:fuel).permit(:num_litres, :price_litre, :total_cost, :date)
   end
    
   #def require_same_user
    #  if current_user != @fuel.user
     #    flash[:danger] = "You can only view your own fuel log"
      #   redirect_to root_path
      #end
   #end
   
end