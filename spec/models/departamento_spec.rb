require 'rails_helper'

RSpec.describe Departamento, type: :model do
  context "Testing factory" do
  it { expect(build(:departamento)).to be_valid }
  end
end
