$ ->
  $("form#sign_in_user, form#sign_up_user").bind("ajax:success", (event, xhr, settings) ->
    $('#sign_in').modal('hide')
    $('#sign_in_button').hide()
    return
  ).bind("ajax:error", (event, xhr, settings, exceptions) ->
    error_messages = if xhr.responseJSON['error']
      xhr.responseJSON['error']
    else if xhr.responseJSON['errors']
      $.map(xhr.responseJSON["errors"], (k, v) ->
        v + " " + k
      ).join "<br/>"
    else
      "Unknown error"
    $(this).parents('.modal').children('.modal-footer').html("<div class='alert alert-danger pull-left'>" + error_messages + "</div>")
  )