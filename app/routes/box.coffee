`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

BoxRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: (params) -> @modelFor('boxes').findBy 'id', params.box_id

`export default BoxRoute`
