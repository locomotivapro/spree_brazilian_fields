class AddFieldsToUser < ActiveRecord::Migration
  def change
    change_table :spree_users do |t|
      t.string :cpf
      t.string :company_name
      t.string :cnpj
      t.string :account_type
    end
  end
end