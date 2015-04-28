`import DS from 'ember-data'`

Box = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  
  # Computed
  shortId: Ember.computed 'id', ->
    id = @get('id')
    id.substring(id.length - 6, id.length)

`export default Box`
