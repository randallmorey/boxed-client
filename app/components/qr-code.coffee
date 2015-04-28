`import Ember from 'ember'`
`import eve from 'eve'`

QrCodeComponent = Ember.Component.extend
  tagName: 'img'
  classNames: ['qr-code']
  attributeBindings: ['src', 'width:size', 'height:size']
  data: null
  size: 300
  src: Ember.computed 'data', 'size', ->
    data = @get 'data'
    size = @get 'size'
    "https://api.qrserver.com/v1/create-qr-code/?size=#{size}x#{size}&data=#{data}"
    

`export default QrCodeComponent`
