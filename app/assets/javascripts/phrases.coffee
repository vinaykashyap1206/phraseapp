$(document).on 'click', '#get_phrase', (e) ->
  e.preventDefault()
  $.ajax
    url: '/phrases/get_random_phrase'
    type: 'GET'
    dataType: 'script'
    success: (data) ->
      console.log data
      return
    failure: (data) ->
      console.log data
      return

$(document).on 'click', '#clear_phrase', (e) ->
  e.preventDefault()
  $.ajax
    url: '/phrases/clear_phrases'
    type: 'PUT'
    dataType: 'script'
    success: (data) ->
      console.log data
      return
    failure: (data) ->
      console.log data
      return