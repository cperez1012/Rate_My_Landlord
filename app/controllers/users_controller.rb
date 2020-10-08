class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def create
        user = User.create!(user_params)
        render json: user, except: [:created_at, :updated_at]
    end

    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render json: user, except: [:created_at, :updated_at]
    end

    def destroy
        user = User.find(params[:id])
        user.destroy()
    end

private
    def user_params
        params.require(:user).permit(:username, :password, :photoImg)
    end

end
