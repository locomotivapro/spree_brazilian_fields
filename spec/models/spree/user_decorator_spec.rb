require "spec_helper"

describe "User" do
  
  context "with a personal account" do
    let(:user) { Factory.build(:user, account_type: 'personal') }
    
    it "should be invalid without cpf" do
      user.should be_invalid
    end
    
    it "should be valid with a valid cpf" do
      user.cpf = DocGenerator.generate_cpf
      user.should be_valid
    end
    
    it "should be invalid with wrong cpf" do
      user.cpf = '11111111111'
      user.should be_invalid
    end
    
    it "should be invalid with duplicated cpf" do
      user2 = Factory.build(:user, account_type: 'personal')
      cpf = DocGenerator.generate_cpf
      
      user.cpf = cpf
      user.should be_valid
      user.save!
      
      user2.cpf = cpf
      user2.should be_invalid
      user2.should have(1).errors_on(:cpf)
    end
    
  end
  
  context "with a bussines account" do
    let(:user) { Factory.build(:user, account_type: 'business') }
    
    it "should be invalid without cnpj and company name" do
      user.should be_invalid
      user.should have(1).errors_on(:cnpj)
      user.should have(1).errors_on(:company_name)
    end
    
    it "should be invalid without company_name" do
      user.company_name = 'A great company'
      user.cnpj = DocGenerator.generate_cnpj
      user.should be_valid
    end
    
    it "should be invalid with duplicated cnpj" do
      user2 = Factory.build(:user, account_type: 'business', company_name: 'My saint store')
      cnpj = DocGenerator.generate_cnpj
      
      user.company_name = 'My superb store'
      user.cnpj = cnpj
      user.should be_valid
      user.save!
      
      user2.cnpj = cnpj
      user2.should be_invalid
      user2.should have(1).errors_on(:cnpj)
    end
  end 
  
end