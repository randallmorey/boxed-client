`import Ember from 'ember'`

QrCodeScannerComponent = Ember.Component.extend
  value: null
  change: (e) ->
    @convertToDataURI e.target.files
  convertToDataURI: (files) ->
    qrcode.callback = (result) => @onDecode result
    for file in files
      reader = new FileReader()
      reader.onload = (e) =>
        @decodeDataURI e.target.result
      reader.readAsDataURL file
  decodeDataURI: (dataURI) -> qrcode.decode dataURI
  onDecode: (result) ->
    @set 'value', null
    if result.match /^error/
      $('#failure')[0].play()
    else
      $('#processing')[0].play()
      @set 'value', result

`export default QrCodeScannerComponent`
