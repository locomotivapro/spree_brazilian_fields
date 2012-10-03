require "spec_helper"

describe Spree::Admin::BrazilianFieldsHelper do
  
  context "formated_cpf" do
    it "returns cpf in format XXX.XXX.XXX-XX" do
      cpf = '11111111111'
      formated_cpf(cpf).should eq('111.111.111-11')

      cpf2 = '12345678900'
      formated_cpf(cpf2).should eq('123.456.789-00')
    end
    
    it "returns error if cpf size is different then 11" do
      cpf = '111111111'
      lambda {formated_cpf(cpf)}.should  raise_error(ArgumentError)
    end
    
    it "returns error if cpf is null" do
      lambda {formated_cpf()}.should  raise_error(ArgumentError)
    end
  end
  
  context "formated_cnpj" do
    it "returns CNPJ in format XX.XXX.XXX/XXXX-XX" do
      cnpj = '12345789000100'
      formated_cnpj(cnpj).should eq('12.345.789/0001-00')
    end
    
    it "returns error if CNPJ size is different then 14" do
      cnpj = '1234578900010'
      lambda {formated_cnpj(cnpj)}.should  raise_error(ArgumentError)
    end
    
    it "returns error if CNPJ is null" do
      lambda {formated_cnpj()}.should  raise_error(ArgumentError)
    end
  end
  
end