`import Ember from 'ember'`
`import t from '../../helpers/t'`

BoxesIndexController = Ember.Controller.extend
  labels:
    search: t 'fields.search'
  search: null
  scanned: null
  scannedObserver: Ember.observer 'scanned', ->
    scanned = @get 'scanned'
    @set 'search', scanned if scanned
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

`export default BoxesIndexController`
