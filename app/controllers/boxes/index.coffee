`import Ember from 'ember'`
`import t from '../../helpers/t'`

BoxesIndexController = Ember.Controller.extend
  qrCodeService: Ember.inject.service 'qr-code'
  labels:
    search: t 'fields.search'
  search: null
  scanned: null
  file: null
  scannedObserver: Ember.observer 'scanned', ->
    scanned = @get 'scanned'
    @set 'search', scanned
  filtered: Ember.computed 'search', 'model.@each.id', 'model.@each.shortId', ->
    search = @get 'search'
    model = @get('model').filterBy 'isNew', false
    filtered = model.filter (model) ->
      id = model.get 'id'
      shortId = model.get 'shortId'
      idMatch = id is search
      shortIdMatch = shortId is search
      idMatch or shortIdMatch
    if search
      filtered
    else
      model
  fileObserver: Ember.observer 'file', ->
    file = @get 'file'
    @set 'scanned', null
    @get('qrCodeService').decode(file)
      .then (result) =>
        @send 'acknowledge'
        @set 'scanned', result
      .catch =>
        @send 'failure'

`export default BoxesIndexController`
