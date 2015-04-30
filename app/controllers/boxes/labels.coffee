`import Ember from 'ember'`

chunkArray = (array, chunkSize) ->
  [].concat.apply [],
    array.map (elem,i) ->
      if i % chunkSize then [] else [array.slice(i, i + chunkSize)]

BoxesLabelsController = Ember.Controller.extend
  labelGroups: Ember.computed 'model', ->
    chunkArray @get('model'), 4

`export default BoxesLabelsController`
