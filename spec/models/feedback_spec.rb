require 'rails_helper'

RSpec.describe Feedback, type: :model do
  context "testing like"
    it "like" do
      new_fb=Feedback.new(like:true) 
      expect(new_fb).to be_valid
    end

    it "dislike" do
      new_fb=Feedback.new(like:false) 
      expect(new_fb).to be_valid
    end

end
