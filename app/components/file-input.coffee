`import Ember from 'ember'`

FileInputComponent = Ember.Component.extend
  tagName: 'input'
  attributeBindings: ['type']
  type: 'file'
  file: null
  change: (e) ->
    @set 'file', e.target.files[0]

`export default FileInputComponent`
