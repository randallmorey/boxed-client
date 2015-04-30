`import DS from 'ember-data'`

Item = DS.Model.extend
  quantity: DS.attr 'number'
  name: DS.attr 'string'
  description: DS.attr 'string'
  
  box: DS.belongsTo 'box', async: true
  
  boxDirty: Ember.computed 'box.@each', ->
    original = @get('_data.box.id') or null
    current = @get('box.id') or null
    original != current
  relationshipsDirty: Ember.computed 'boxDirty', ->
    @get 'boxDirty'
  relationshipsDirtyChange: Ember.observer 'relationshipsDirty', ->
    @send 'becomeDirty' if @get 'relationshipsDirty'
  onInit: Ember.on 'init', ->
    Ember.run.once => @get 'relationshipsDirty'

`export default Item`
