`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ItemRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: (params) -> @modelFor('items').findBy 'id', params.item_id
  actions:
    afterDelete: ->
      @transitionTo 'items'

`export default ItemRoute`
