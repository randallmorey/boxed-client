`import Ember from 'ember'`

BoxFormController = Ember.Controller.extend
  newForm: false
  onInit: Ember.on 'init', ->
    if !@get 'model'
      @set 'newForm', true
      @createNewModel()
  newFormObserver: Ember.observer 'model.isNew', 'newForm', ->
    if @get('newForm') and @get('model') and !@get('model.isNew')
      @createNewModel()
  createNewModel: (data) ->
    newModel = @store?.createRecord 'box', data
    @set 'model', newModel
    newModel
  actions:
    save: ->
      target = @get 'target'
      @get('model').save().then (model) ->
        target.send 'afterSave', model
    cancel: -> @get('model').rollback()

`export default BoxFormController`
