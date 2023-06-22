require 'rails_helper'

RSpec.describe "Api::Feedbacks", type: :request do
  describe "POST/create" do
    let(:feedback_params) do
      attributes_for(:feedback)
    end
    context "when params are ok" do
      it "return http status created" do
        post "/api/feedback/create" , params:{feedback: feedback_params}
        expect(response).to have_http_status(:created)
      end
    end
    
    context "when params are nil"
      feedback_params=nil
      it "return http status bad_request" do
        post "/api/feedback/create" , params:{feedback: feedback_params}
        expect(response).to have_http_status(:bad_request)
      end
    end
  end

  describe "PATCH/update/:id" do
    let(:feedback1) {create(:feedback, content:"publicacao")}
    let(:feedback2) {create(:feedback, content:"feedback")}
    let(:feedback_params) do
      attributes_for(:feedback)
    end
    context "when params are ok" do
      it "return http status created" do
        patch "/api/feedback/update/#{feedback1.id}" , params:{feedback: {content: "novo_comentario"}}
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe "DELETE /delete/:id" do
    let(:feedback1) {create(:feedback, content:"coment")}
    context "when feedback exists" do
      it "return http status ok" do
        delete "/api/feedback/delete/#{feedback1.id}" 
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe "show/get/:id" do
    let(:feedback1) {create(:feedback, content:"coment")}
    context "when feedback exists" do
      it "return http status ok" do
        get "/api/feedback/show/#{feedback1.id}" 
        expect(response).to have_http_status(:ok)
      end
    end
end
