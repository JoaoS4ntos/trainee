require 'rails_helper'

RSpec.describe Departamento, type: :model do
  context "Testing factory" do
  it { expect(build(:departamento)).to be_valid }
  end

  context "Validating Name" do
    it "should be invalid if name nil" do
      expect(build(:departamento, nome:nil)).to be_invalid
    end
    it "should be invalid if repeated" do
      create(:departamento, nome:"CIC")
      expect(build(:departamento, nome:"CIC")).to be_valid
    end
  end
end
