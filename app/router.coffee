`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'login'
  @resource 'boxes', ->
    @route 'new'
    @route 'labels'
    @resource 'box', path: ':box_id', ->
      @route 'edit'
  @resource 'items', ->
    @route 'new'
    @resource 'item', path: ':item_id', ->
      @route 'edit'

`export default Router`
