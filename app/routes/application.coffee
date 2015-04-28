`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend ApplicationRouteMixin,
  sessionInvalidationSucceeded: ->
    config = @container.lookupFactory 'config:environment'
    @transitionTo(config['simple-auth'].routeAfterInvalidation).then ->
      window.location.reload()

`export default ApplicationRoute`
