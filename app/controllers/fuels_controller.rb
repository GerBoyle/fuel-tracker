class FuelsController < ApplicationController
    
   def new
      @fuel = Fuel.new 
   end
    
   def show
      @fuel = Fuel.find(params[:id])
   end
   
   def edit
      @fuel = Fuel.find(params[:id])
   end
   
   def index
      @fuels=Fuel.all
   end
   
   def update
      @fuel=Fuel.find(params[:id])
      if @fuel.update(fuel_params)
         flash[:notice] = "Fuel log was successfully updated"
         redirect_to fuel_path(@fuel)
      else
         render edit
      end
   end
    
   def create
      @fuel = Fuel.new(fuel_params)
      @fuel.save
      redirect_to fuel_path(@fuel)
   end
   
   def destroy
      @fuel = Fuel.find(params[:id])
      @fuel.destroy
      flash[:notice] = "Fuel log was successfully deleted"
      redirect_to fuels_path
   end

   private
   def fuel_params
      params.require(:fuel).permit(:num_litres, :price_litre, :total_cost, :date)
   end
    
end