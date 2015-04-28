`import Ember from 'ember'`

BoxesRoute = Ember.Route.extend
  model: -> @store.find 'box'
  actions:
    afterSave: ->
      # no op (handled in new route only)

`export default BoxesRoute`
