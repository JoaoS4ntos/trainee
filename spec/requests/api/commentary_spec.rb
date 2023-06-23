require 'rails_helper'

RSpec.describe "Api::Commentaries", type: :request do
  describe "POST/create" do
    let(:commentary_params) do
      attributes_for(:commentary)
    end
    context "when params are ok" do
      it "return http status created" do
        post "/api/commentary/create" , params:{commentary: commentary_params}
        expect(response).to have_http_status(:found)
      end
    end
    
    context "when params are nil"
      commentary_params=nil
      it "return http status bad_request" do
        post "/api/commentary/create" , params:{commentary: commentary_params}
        expect(response).to have_http_status(:found)
      end
    end
  end

  describe "PATCH/update/:id" do
    let(:commentary1) {create(:commentary, content:"publicacao")}
    let(:commentary2) {create(:commentary, content:"commentary")}
    let(:commentary_params) do
      attributes_for(:commentary)
    end
    context "when params are ok" do
      it "return http status created" do
        patch "/api/commentary/update/#{commentary1.id}" , params:{commentary: {content: "novo_comentario"}}
        expect(response).to have_http_status(:found)
      end
    end
  end

  describe "DELETE /delete/:id" do
    let(:commentary1) {create(:commentary, content:"coment")}
    context "when commentary exists" do
      it "return http status ok" do
        delete "/api/commentary/delete/#{commentary1.id}" 
        expect(response).to have_http_status(:found)
      end
    end
  end

  describe "show/get/:id" do
    let(:commentary1) {create(:commentary, content:"coment")}
    context "when commentary exists" do
      it "return http status ok" do
        get "/api/commentary/show/#{commentary1.id}" 
        expect(response).to have_http_status(:ok)
      end
    end
end
