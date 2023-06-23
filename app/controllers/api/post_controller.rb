class Api::PostController < ApplicationController
    def create
        post=Post.new(post_params)
        post.save!
        render json: post, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def index
        post = Post.all
        render json: post,status: :ok
    end

    def show 
        post = Post.find(params[:id])
        render json: post, status: :ok
    rescue StandardError => e
        render json: e, status: :not_found
    end

    def update
        post = Post.find(params[:id])
        post.update!(post_params)
        render json: post, status: :ok
    rescue StandardError => e
        render json: e, status: :not_found
    end

    def delete
        post = Post.find(params[:id])
        post.destroy!
        render json: post, status: :ok
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    private

    

    def post_params
        params.require(:post).permit(:id , :title, :content)
    end

    
end


