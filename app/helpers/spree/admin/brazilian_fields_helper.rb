module Spree
  module Admin
    module BrazilianFieldsHelper
      
      def formated_cpf(cpf)
        cpf1, cpf2, cpf3, cpf4 = cpf[0...3], cpf[3...6], cpf[6...9], cpf[9...11]
        "#{cpf1}.#{cpf2}.#{cpf3}-#{cpf4}"
      end
      
    end
  end
end