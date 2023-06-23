class Api::PostController < ApplicationController
    acts_as_token_authentication_handler_for User , except: [:show]
    before_action :admin_authentication , only: [:create,:update,:delete]
    def create
        post=Post.new(post_params)
        post.save!
        render json: post, status: :created
    rescue StandardError => e
        render json: e, status: :bad_request
    end

    def index
        post = Post.all
        render json: array_serializer(post),status: :ok
    end

    def show 
        post = Post.find(params[:id])
        render json: serializer(post), status: :ok
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
    def array_serializer(post)
        Panko::ArraySerializer.new(post, each_serializer: PostSerializer).to_json
    end 

    def serializer(post)
        PostSerializer.new.serialize_to_json(post)
    end
    def post_params
        params.require(:post).permit(:id , :title, :content, :image)
    end

    
end


