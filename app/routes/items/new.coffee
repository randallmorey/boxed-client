`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ItemsNewRoute = Ember.Route.extend AuthenticatedRouteMixin,
  actions:
    afterSave: (model) ->
      @transitionTo 'items'

`export default ItemsNewRoute`
