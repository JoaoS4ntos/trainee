require 'rails_helper'

RSpec.describe Post, type: :model do
  context "Check title and content not null"
    it "title ok" do
      novopost=Post.new(title:"news",content:"conteudo")
      expect(novopost).to be_valid
    end
    it "title not ok" do
      novopost=Post.new(title:nil,content:nil)
      expect(novopost).to_not be_valid
    end
  end

