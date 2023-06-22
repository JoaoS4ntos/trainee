class Api::FeedbackController < ApplicationController
    def create
        feedbacks=Feedbacks.new(feedbacks_params)
        feedbacks.save!
        render json: feedbacks, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def index
        feedbacks = Feedbacks.all
        render json: feedbacks,status: :ok
    end

    def show 
        feedbacks = Feedbacks.find(params[:id])
        render json: feedbacks, status: :ok
    rescue StandardError => e
        render json: e, status: :not_found
    end

    def update
        feedbacks = Feedbacks.find(params[:id])
        feedbacks.update!(feedbacks_params)
        render json: feedbacks, status: :ok
    rescue StandardError => e
        render json: e, status: :not_found
    end

    def delete
        feedbacks = Feedbacks.find(params[:id])
        feedbacks.destroy!
        render json: feedbacks, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    

    def feedbacks_params
        params.require(:feedbacks).permit(:like)
    end

    
end
