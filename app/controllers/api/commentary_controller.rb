class Api::CommentaryController < ApplicationController
    def create
        commentary=Commentary.new(commentary_params)
        commentary.save!
        render json: commentary, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def index
        commentary = Commentary.all
        render json: commentary,status: :ok
    end

    def show 
        commentary = Commentary.find(params[:id])
        render json: commentary, status: :ok
    rescue StandardError => e
        render json: e, status: :not_found
    end

    def update
        commentary = Commentary.find(params[:id])
        commentary.update!(commentary_params)
        render json: commentary, status: :ok
    rescue StandardError => e
        render json: e, status: :not_found
    end

    def delete
        commentary = Commentary.find(params[:id])
        commentary.destroy!
        render json: commentary, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    

    def commentary_params
        params.require(:commentary).permit(:content)
    end

end
