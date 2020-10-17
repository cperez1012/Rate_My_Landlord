class ApartmentsController < ApplicationController

    def index
        apartments = Apartment.all
        render json: apartments, except: [:created_at, :updated_at], methods: [:avgScore, :full_address, :all_comments, :avgScore_noise, :avgScore_staff, :avgScore_safety, :avgScore_maintenance, :avgScore_appearance]
    end

    def show
        apartment = Apartment.find(params[:id])
        render json: apartment, except: [:created_at, :updated_at], methods: [:avgScore, :full_address, :all_comments, :avgScore_noise, :avgScore_staff, :avgScore_safety, :avgScore_maintenance, :avgScore_appearance]
    end

    def create
        apartment = Apartment.create!(param_settings)
        render json: apartment, except: [:created_at, :updated_at]
    end

    def update
        apartment = Apartment.find(params[:id])
        apartment.update(param_settings)
        render json: apartment, except: [:created_at, :updated_at]
    end

    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy()
    end

    private
    def param_settings
        params.require(:apartment).permit(:street_number, :street_name, :city, :state, :zipcode, :country, :photoImg, :lat, :lng)
    end
end
