`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend ApplicationRouteMixin,
  soundEffectService: Ember.inject.service 'sound-effect'
  actions:
    sessionInvalidationSucceeded: ->
      config = @container.lookupFactory 'config:environment'
      @transitionTo(config['simple-auth'].routeAfterInvalidation).then ->
        window.location.reload()
    processing: ->
      @get('soundEffectService').play 'processing'
    acknowledge: ->
      @get('soundEffectService').play 'acknowledge'
    failure: ->
      @get('soundEffectService').play 'failure'

`export default ApplicationRoute`
