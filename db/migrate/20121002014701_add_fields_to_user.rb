class AddFieldsToUser < ActiveRecord::Migration
  def change
    table_name = Spree.user_class.table_name.to_sym || :spree_users
    change_table table_name do |t|
      t.string :cpf
      t.string :company_name
      t.string :cnpj
      t.string :state_registry
      t.string :account_type
    end
  end
end
