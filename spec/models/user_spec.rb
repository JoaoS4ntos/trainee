require 'rails_helper'

RSpec.describe User, type: :model do
  context "Check params not null"
    it "params ok" do
      novonome=User.new(name:"joao",password:'123456',email:'joao.silva@gmail.com')
      expect(novonome).to be_valid
    end
    it "params not ok" do
      novonome=User.new(name:nil,password:nil,email:nil)
      expect(novonome).to_not be_valid
    end
end
