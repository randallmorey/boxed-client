`import Ember from 'ember'`

BoxRoute = Ember.Route.extend
  model: (params) -> @modelFor('boxes').findBy 'id', params.box_id

`export default BoxRoute`
