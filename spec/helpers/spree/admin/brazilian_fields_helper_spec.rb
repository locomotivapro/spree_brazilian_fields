require "spec_helper"

describe Spree::Admin::BrazilianFieldsHelper do
  
  it "returns cpf in format XXX.XXX.XXX-XX" do
    cpf = '11111111111'
    formated_cpf(cpf).should eq('111.111.111-11')
    
    cpf2 = '12345678900'
    formated_cpf(cpf2).should eq('123.456.789-00')
  end
  
end