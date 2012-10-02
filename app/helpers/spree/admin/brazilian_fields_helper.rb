module Spree
  module Admin
    module BrazilianFieldsHelper
      
      def formated_cpf(cpf)
        cpf1, cpf2, cpf3, cpf4 = cpf[0...3], cpf[3...6], cpf[6...9], cpf[9...11]
        "#{cpf1}.#{cpf2}.#{cpf3}-#{cpf4}"
      end
      
      def formated_cnpj(cnpj)
        cnpj1, cnpj2, cnpj3, cnpj4, cnpj5 = cnpj[0...2], cnpj[2...5], cnpj[5...8], cnpj[8...12], cnpj[12...14]
        "#{cnpj1}.#{cnpj2}.#{cnpj3}/#{cnpj4}-#{cnpj5}"
      end
      
    end
  end
end