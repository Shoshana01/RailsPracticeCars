class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def show
        @car = Car.find(params[:id])
    end

    def new
        @car = Car.new
    end

    def create
       @car = Car.new(car_params)
       if @car.save
        redirect_to cars_url
        #if save for pic worked go to index.html.erb
       else
        render :new
        #otherwise render new.html.erb
    end

    def edit
        @car = Car.find(params[:id])
    end

    def update
        @car = Car.find(params[:id])

        if @car.update_attributes(car_params)
            redirect_to "/cars/#{@car.id}"
        else
            render :edit
        end
    end
end

private
def car_params
    params.require(:car).permit(:owner, :model, :color)
end

end
