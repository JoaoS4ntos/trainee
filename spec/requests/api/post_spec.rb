require 'rails_helper'

RSpec.describe "Api::Posts", type: :request do
  describe "POST/crate" do
    let(:post_params) do
      attributes_for(:post)
    end
    context "when params are ok" do
      it "return http status created" do
        post "/api/post/create" , params:{post: post_params}
        expect(response).to have_http_status(:created)
      end
    end
    
    context "when params are nil"
      post_params=nil
      it "return http status bad_request" do
        post "/api/post/create" , params:{post: post_params}
        expect(response).to have_http_status(:bad_request)
      end
    end
  end

  describe "PATCH/update/:id" do
    let(:post1) {create(:post, title:"publicacao")}
    let(:post2) {create(:post, title:"postagem")}
    let(:post_params) do
      attributes_for(:post)
    end
    context "when params are ok" do
      it "return http status created" do
        patch "/api/post/update/#{post1.id}" , params:{post: {title: "nova_publicacao"}}
        expect(response).to have_http_status(:ok)
      end
    end
  end
