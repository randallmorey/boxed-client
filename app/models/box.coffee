`import DS from 'ember-data'`

Box = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'

`export default Box`
