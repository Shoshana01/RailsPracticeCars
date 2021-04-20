class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def show
        @car = Car.find(params[:id])
    end

    def new
    end

    def create
        render plain: "Saving a car. Owner: #{params[:owner]}, Model: #{params[:model]}, Color: #{params[:color]}"
    end
end
