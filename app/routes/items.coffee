`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ItemsRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: -> @store.find 'item'
  actions:
    afterSave: ->
      # no op (handled in new route only)

`export default ItemsRoute`
