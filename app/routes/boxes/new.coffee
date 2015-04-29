`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

BoxesNewRoute = Ember.Route.extend AuthenticatedRouteMixin,
  actions:
    afterSave: (model) ->
      @transitionTo 'boxes'

`export default BoxesNewRoute`
