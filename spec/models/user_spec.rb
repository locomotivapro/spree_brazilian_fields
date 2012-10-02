require "spec_helper"

describe "User" do
  
  context "with a personal account" do
    let(:user) { Factory.build(:user) }
    
    it "should be invalid without cpf" do
      user.should be_invalid
    end
  end
  
  context "with a bussines account" do
    it "should be invalid without cnpj" do
      
    end
    
    it "should be invalid without company_name" do
      
    end
  end
  
  
end