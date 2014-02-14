// Generated by CoffeeScript 1.7.1
var $, ANN, util;

ANN = ANN || {};

$ = {};

ANN.util = util = (function(ann) {
  'use strict';
  var ajax;
  ajax = function() {
    return 'ajax call';
  };
  ajax.endpoint = function(url) {
    var req, reqDone;
    reqDone = function(e) {
      return e;
    };
    req = $.ajax({
      url: url
    });
    req.done(reqDone(e));
    return url;
  };
  ajax.setup = function(arg) {
    var setup, url;
    url = arg.url || '';
    setup = (function() {
      var ajaxSetup;
      ajaxSetup = $.ajaxSetup = {
        url: url
      };
      return ajaxSetup;
    })();
    return setup;
  };
  return {
    ajax: ajax,
    endpoint: ajax.endpoint,
    setup: ajax.setup
  };
})(ANN || {});
