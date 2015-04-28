`import Ember from 'ember'`

BoxesNewRoute = Ember.Route.extend
  actions:
    afterSave: (model) ->
      @transitionTo 'box.edit', model

`export default BoxesNewRoute`
