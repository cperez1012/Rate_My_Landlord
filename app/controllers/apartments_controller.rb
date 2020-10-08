class ApartmentsController < ApplicationController

    def index
        apartments = Apartment.all 
        render json: apartments, except: [:created_at, :updated_at]
    end

    def show
        apartment = Apartment.find(params[:id])
        render json: apartment, except: [:created_at, :updated_at]
    end

    def create
        apartment = Apartment.create!(param_settings)
        render json: apartment, except: [:created_at, :updated_at]
    end

    private
    def param_settings
        params.require(:apartment).permit(:address, :photoImg)
    end
end
