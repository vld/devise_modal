$ ->
  $("form#sign_in_user, form#sign_up_user").bind("ajax:success", (event, xhr, settings) ->
    $('#sign_in').modal('hide')
    $('#sign_in_button').hide()
    return
  ).bind("ajax:error", (event, xhr, settings, exceptions) ->
    alert("Error")
  )