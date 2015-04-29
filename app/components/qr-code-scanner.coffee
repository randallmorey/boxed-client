`import Ember from 'ember'`

QrCodeScannerComponent = Ember.Component.extend
  value: null
  change: ->
    console.log 'change'

`export default QrCodeScannerComponent`
