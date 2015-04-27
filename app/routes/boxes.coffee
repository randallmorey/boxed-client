`import Ember from 'ember'`

BoxesRoute = Ember.Route.extend
  model: -> @store.find 'box'

`export default BoxesRoute`
