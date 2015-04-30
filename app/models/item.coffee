`import DS from 'ember-data'`

Item = DS.Model.extend
  quantity: DS.attr 'number'
  name: DS.attr 'string'
  description: DS.attr 'string'

`export default Item`
