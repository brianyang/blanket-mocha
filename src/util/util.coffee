'use strict'
ANN = ANN || {}
ANN.util = util = do (ann = ANN || {}) ->
  ajax = ->
    'ajax call'
  ajax.endpoint = (url) ->
    req = $.ajax
      url: url
    req.done (e) ->
      return e
    url
  ajax.setup = (arg) ->
    url = arg.url || ''
    setup = (->
      $.ajaxSetup =
        url: url
    )()
    arg.url ? arg


  ajax: ajax
  endpoint: ajax.endpoint
  setup: ajax.setup
# jquery: $
