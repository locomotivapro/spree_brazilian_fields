jQuery ->
  disable = (field) ->
    $(field).prop('value', '')
    $(field).prop('disabled', true)

  enable = (field) ->
    $(field).prop('disabled', false)

  toggle_fields =->
    if $('[id*=account_type_business]').is(':checked')
      $('#personal_box').hide()
      $('#business_box').show()

      disable '#personal_box [id*=cpf]'

      enable '#business_box [id*=company_name]'
      enable '#business_box [id*=cnpj]'
      enable '#business_box [id*=state_registry]'
    else
      $('#personal_box').show()
      $('#business_box').hide()

      disable '#business_box [id*=company_name]'
      disable '#business_box [id*=cnpj]'
      disable '#business_box [id*=state_registry]'

      enable '#personal_box [id*=cpf]'

  $(document).ready(toggle_fields)
  $('[name*="[account_type]"]').click(toggle_fields)

