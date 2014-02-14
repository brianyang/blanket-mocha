ANN = ANN || {}
$ = {}
ANN.util = util = do (ann = ANN || {}) ->
  'use strict'
  ajax = ->
    'ajax call'
  ajax.endpoint = (url) ->
    reqDone = (e)->
      return e
    req = $.ajax
      url: url
    req.done reqDone(e)
    url
  ajax.setup = (arg) ->
    url = arg.url || ''
    setup = (->
      ajaxSetup = $.ajaxSetup =
        url: url
      ajaxSetup
    )()
    setup
    # arg.url ? arg

  ajax: ajax
  endpoint: ajax.endpoint
  setup: ajax.setup
