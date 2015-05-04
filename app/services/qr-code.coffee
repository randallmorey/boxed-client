`import Ember from 'ember'`

QrCodeService = Ember.Service.extend
  availableIn: ['controllers']
  decode: (file) ->
    reader = new FileReader()
    new Ember.RSVP.Promise (resolve, reject) ->
      reader.onload = (e) -> qrcode.decode e.target.result
      qrcode.callback = (result) ->
        if result.match /^error/
          reject()
        else
          resolve result
      reader.readAsDataURL file

`export default QrCodeService`
