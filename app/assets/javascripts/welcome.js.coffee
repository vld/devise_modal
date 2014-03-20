$ ->
  $("form#sign_in_user, form#sign_up_user").bind "ajax:success", (e, data, status, xhr) ->
    if data.success
      $('#sign_in').modal('hide')
      $('#sign_in_button').hide()
    else
      alert('failure!')