`import Ember from 'ember'`
`import t from '../../helpers/t'`

ItemsIndexController = Ember.Controller.extend
  labels:
    search: t 'fields.search'
  search: null
  filtered: Ember.computed 'search', 'model.@each.id', 'model.@each.shortId', ->
    search = @get 'search'
    model = @get('model').filterBy 'isNew', false
    filtered = model.filter (model) ->
      name = model.get 'name'
      !!name.toLowerCase().match search
    if search
      filtered
    else
      model

`export default ItemsIndexController`
