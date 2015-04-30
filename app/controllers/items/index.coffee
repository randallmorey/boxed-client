`import Ember from 'ember'`
`import t from '../../helpers/t'`
`import groupBy from 'ember-group-by'`

ItemsIndexController = Ember.Controller.extend
  labels:
    search: t 'fields.search'
  search: null
  filtered: Ember.computed 'search', 'model.@each.id', 'model.@each.shortId', 'model.@each.box', ->
    search = @get 'search'
    model = @get('model').filterBy 'isNew', false
    filtered = model.filter (model) ->
      name = model.get 'name'
      !!name.toLowerCase().match search
    if search
      filtered
    else
      model
  groups: groupBy 'filtered', 'box.name'

`export default ItemsIndexController`
