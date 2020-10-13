class CommentsController < ApplicationController
    def index
        comments = Comment.all 
        render json: comments, except: [:created_at, :updated_at]
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment, except: [:created_at, :updated_at]
    end

    def create
        comment = Comment.create!(param_settings)
        render json: comment, except: [:created_at, :updated_at]
    end

    def update 
        comment = Comment.find(params[:id])
        comment.update(param_settings)
        render json: comment, except: [:created_at, :updated_at]
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy()
    end

    private
    def param_settings
        params.require(:comment).permit(:user_id, :apartment_id, :message, :rating)
    end
end
