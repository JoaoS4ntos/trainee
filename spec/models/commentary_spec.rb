require 'rails_helper'

RSpec.describe Commentary, type: :model do
  context "Comment not null"
    it "comment ok" do
      novo=Commentary.new(content:"conteudo")
      expect(novo).to be_valid
    end
    it "comment not ok" do
      novo=Commentary.new(content:nil)
      expect(novo).to_not be_valid
    end
end
