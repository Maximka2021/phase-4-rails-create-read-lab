class PlantsController < ApplicationController
    def index 
        plant = Plant.all
        render json: plant, except: [:created_at, :updated_at]
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant, except: [:created_at, :updated_at]
    end

    def create
        plant = Plant.create(plant_data)
        render json: plant, except: [:created_at, :updated_at]
    end

    private

    def plant_data
        params.permit(:name, :image, :price)
    end
end
