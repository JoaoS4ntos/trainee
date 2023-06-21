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

