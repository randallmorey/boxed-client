pt = (value, options) ->
  options ?= {}
  options.lng = 'pt-BR'
  i18n.t(value, options).capitalize()

`export default pt`
