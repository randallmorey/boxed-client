`import Ember from 'ember'`

BoxesNewRoute = Ember.Route.extend
  actions:
    afterSave: (model) ->
      @transitionTo 'boxes'

`export default BoxesNewRoute`
