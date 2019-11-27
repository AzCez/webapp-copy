$(document).on 'keyup', '.search-txt', ->
  $.ajax
    url: $(this).closest('form').attr('action')
    dataType: 'script'
    type: 'GET'
    contentType: 'application/json'
    data: $(this).closest('form').serialize()
    success: (data) ->
  return