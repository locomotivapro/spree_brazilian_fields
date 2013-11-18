jQuery ->
  disable = (field) ->
    $(field).prop('value', '')
    $(field).prop('disabled', true)

  enable = (field) ->
    $(field).prop('disabled', false)

  toggle_fields =->
    if $('#user_account_type_business').is(':checked')
      $('#personal_box').hide()
      $('#business_box').show()

      disable '#user_cpf'

      enable '#user_company_name'
      enable '#user_cnpj'
      enable '#user_state_registry'
    else
      $('#personal_box').show()
      $('#business_box').hide()

      disable '#user_company_name'
      disable '#user_cnpj'
      disable '#user_state_registry'

      enable '#user_cpf'

  $(document).ready(toggle_fields)
  $('[data_user_account_type]').click(toggle_fields)
