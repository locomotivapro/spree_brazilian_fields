Spree::User.class_eval do
  validates_inclusion_of :account_type, :in => %w(personal business)

  validates_with CpfValidator, :if => :personal_account?
  validates_uniqueness_of :cpf, :if => :personal_account?

  validates_presence_of :company_name, :if => :business_account?
  validates_with CnpjValidator, :if => :business_account?
  validates_uniqueness_of :cnpj, :if => :business_account?

private

  def personal_account?
    return true if self.account_type == 'personal'
  end

  def business_account?
    !personal_account?
  end

end
