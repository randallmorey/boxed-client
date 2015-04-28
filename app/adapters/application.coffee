`import Ember from 'ember'`

ApplicationAdapter = DS.RESTAdapter.extend
  host: Ember.computed -> @container.lookupFactory('config:environment').api.url

`export default ApplicationAdapter`
