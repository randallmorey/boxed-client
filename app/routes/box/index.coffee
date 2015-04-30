`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

BoxIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  afterModel: ->
    @transitionTo 'box.edit', @modelFor('box')

`export default BoxIndexRoute`
