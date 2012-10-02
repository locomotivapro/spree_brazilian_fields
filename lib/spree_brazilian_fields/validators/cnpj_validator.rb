class CnpjValidator < ActiveModel::Validator  
  def validate(record)
    # return false if record.cnpj.nil?

    nulosb = %w{11111111111111 22222222222222 33333333333333 44444444444444 55555555555555 66666666666666 77777777777777 88888888888888 99999999999999 00000000000000}

    if !record.cnpj.present? || record.cnpj.nil?
      record.errors.add(:cnpj, :not_present) 
      return false 
    end

    record.cnpj = record.cnpj.gsub(/[^0-9]/,'')
    unless record.cnpj.length == 14
      record.errors.add(:cnpj, :wrong_format) 
      return false
    end

    valorb = record.cnpj.scan /[0-9]/
    if valorb.length == 14
      unless nulosb.member?(valorb.join)
        valorb = valorb.collect{|x| x.to_i}
        somab = valorb[0]*5+valorb[1]*4+valorb[2]*3+valorb[3]*2+valorb[4]*9+valorb[5]*8+valorb[6]*7+valorb[7]*6+valorb[8]*5+valorb[9]*4+valorb[10]*3+valorb[11]*2
        somab = somab - (11*(somab/11))
        resultado1b = (somab==0 || somab==1) ? 0 : 11 - somab
        if resultado1b == valorb[12]
          somab = valorb[0]*6+valorb[1]*5+valorb[2]*4+valorb[3]*3+valorb[4]*2+valorb[5]*9+valorb[6]*8+valorb[7]*7+valorb[8]*6+valorb[9]*5+valorb[10]*4+valorb[11]*3+valorb[12]*2
          somab = somab - (11*(somab/11))
          resultado2b = (somab == 0 || somab == 1) ? 0 : 11 - somab
          return true if resultado2b == valorb[13] # valid CNPJ
        end
      end
    end
    record.errors.add(:cnpj, :invalid)
    
  end
end