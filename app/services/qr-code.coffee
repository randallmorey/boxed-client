`import Ember from 'ember'`

QrCodeService = Ember.Service.extend
  availableIn: ['controllers']
  decode: (files) ->
    file = files[0]
    reader = new FileReader()
    new Ember.RSVP.Promise (resolve, reject) ->
      reader.onload = (e) -> qrcode.decode dataURI
      qrcode.callback = (result) ->
        if result.match /^error/
          reject()
        else
          resolve result
      reader.readAsDataURL file

`export default QrCodeService`
