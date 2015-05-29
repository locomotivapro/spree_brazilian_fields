jQuery ->
  disable = (field) ->
    $(field).prop('value', '')
    $(field).prop('disabled', true)

  enable = (field) ->
    $(field).prop('disabled', false)

  toggle_fields =->
    if $('#spree_user_account_type_business').is(':checked')
      $('#personal_box').hide()
      $('#business_box').show()

      disable '#spree_user_cpf'

      enable '#spree_user_company_name'
      enable '#spree_user_cnpj'
      enable '#spree_user_state_registry'
    else
      $('#personal_box').show()
      $('#business_box').hide()

      disable '#spree_user_company_name'
      disable '#spree_user_cnpj'
      disable '#spree_user_state_registry'

      enable '#spree_user_cpf'

  $(document).ready(toggle_fields)
  $('[name="spree_user[account_type]"]').click(toggle_fields)
