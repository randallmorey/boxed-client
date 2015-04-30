`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ItemsRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: -> @store.find 'item'
  afterModel: ->
    Ember.RSVP.hash
      boxes: @store.find 'box'
    .then (results) =>
      @set 'extraModels', results
  setupController: (controller) ->
    extraModels = @get 'extraModels'
    controller.setProperties extraModels
    @_super.apply @, arguments
  actions:
    afterSave: ->
      # no op (handled in new route only)

`export default ItemsRoute`
