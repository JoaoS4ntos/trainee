require 'rails_helper'

RSpec.describe "Api::Categories", type: :request do
  describe "POST/create" do
    let(:category_params) do
      attributes_for(:category)
    end
    context "when params are ok" do
      it "return http status created" do
        post "/api/category/create" , params:{category: category_params}
        expect(response).to have_http_status(:created)
      end
    end
    
    context "when params are nil"
      category_params=nil
      it "return http status bad_request" do
        post "/api/category/create" , params:{category: category_params}
        expect(response).to have_http_status(:bad_request)
      end
    end
  end

  describe "PATCH/update/:id" do
    let(:category1) {create(:category, name:"publicacao")}
    let(:category2) {create(:category, name:"category")}
    let(:category_params) do
      attributes_for(:category)
    end
    context "when params are ok" do
      it "return http status created" do
        patch "/api/category/update/#{category1.id}" , params:{category: {name: "novo_comentario"}}
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe "DELETE /delete/:id" do
    let(:category1) {create(:category, name:"coment")}
    context "when category exists" do
      it "return http status ok" do
        delete "/api/category/delete/#{category1.id}" 
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe "show/get/:id" do
    let(:category1) {create(:category, name:"coment")}
    context "when category exists" do
      it "return http status ok" do
        get "/api/category/show/#{category1.id}" 
        expect(response).to have_http_status(:ok)
      end
    end
end

