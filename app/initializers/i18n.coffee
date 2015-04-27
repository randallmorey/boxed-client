`import Ember from 'ember'`
`import t from '../helpers/t'`

options =
  getAsync: false
  detectLngQS: 'locale'
  fallbackLng: 'en'

I18nInitializer =
  name: 'i18n'
  initialize: (container, app) ->
    i18n.init options, ->
      locale = i18n.lng()
      moment.locale locale
      Ember.Handlebars.registerBoundHelper 't', t

`export default I18nInitializer`
