`import Ember from 'ember'`
`import t from '../../helpers/t'`
`import groupBy from 'ember-group-by'`

ItemsIndexController = Ember.Controller.extend
  labels:
    search: t 'fields.search'
  search: null
  scanned: null
  scannedObserver: Ember.observer 'scanned', ->
    scanned = @get 'scanned'
    @set 'search', scanned if scanned
  filtered: Ember.computed 'search', 'model.@each', 'model.@each.box', ->
    search = @get 'search'
    model = @get('model').filterBy 'isNew', false
    filtered = model.filter (model) ->
      nameMatch = model.get('name')?.toLowerCase().match search
      boxNameMatch = model.get('box.name')?.toLowerCase().match search
      boxShortIdMatch = model.get('box.id')?.match search
      boxIdMatch = model.get('box.id')?.match search
      !!(nameMatch or boxNameMatch or boxShortIdMatch or boxIdMatch)
    if search
      filtered
    else
      model
  groups: groupBy 'filtered', 'box.name'

`export default ItemsIndexController`
