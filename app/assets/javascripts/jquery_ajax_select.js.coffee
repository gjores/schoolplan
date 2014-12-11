jQuery.fn.ajaxSelect = (url, options) ->
  defaults =
    placeholder: "Search for a record"
    formatter: (record) ->
      record.name
    multiple: false
    allow_clear: true
 
  settings = $.extend(defaults, options)
 
  this.select2
    initSelection: (elm, callback) ->
      results = $(elm).data "records"
      callback(results)
    placeholder: settings.placeholder
    allowClear: settings.allow_clear
    minimumInputLength: 3
    multiple: settings.multiple
    ajax:
      url: url
      dataType: "jsonp"
      quietMillis: 100
      data: (term, page) ->
        query: term
        limit: 10
        page: page
      results: (data, page) ->
        more = (page * 10) < data.total
 
        results: data.records
        more: more
    formatResult: settings.formatter
    formatSelection: settings.formatter