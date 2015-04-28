`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

BoxesRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: -> @store.find 'box'
  actions:
    afterSave: ->
      # no op (handled in new route only)

`export default BoxesRoute`
