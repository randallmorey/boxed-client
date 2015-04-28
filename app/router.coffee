`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'boxes', ->
    @resource 'box', path: ':box_id', ->
      @route 'edit'

`export default Router`
