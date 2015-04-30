`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ItemIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  afterModel: ->
    @transitionTo 'item.edit', @modelFor('item')

`export default ItemIndexRoute`
