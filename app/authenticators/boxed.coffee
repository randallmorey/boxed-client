`import BaseAuthenticator from 'simple-auth/authenticators/base'`

BoxedAuthenticator = BaseAuthenticator.extend
  url: Ember.computed ->
    @container.lookupFactory('config:environment').api.authentication.url
  restore: (properties) ->
    new Ember.RSVP.Promise (resolve, reject) ->
      if properties?
        resolve properties
      else
        reject()
  authenticate: (credentials) ->
    new Ember.RSVP.Promise (resolve, reject) =>
      data =
        email: credentials.identification
        password: credentials.password
      success = (response) ->
        resolve response
      failure = (xhr, status, error) ->
        json = JSON.parse xhr.responseText if xhr.responseText
        reject (xhr.responseJSON || json)?.error
      @makeRequest(data).then success, failure
  makeRequest: (data) ->
    Ember.$.ajax
      url: @get 'url'
      type: 'POST'
      data: data
      crossDomain: true
      beforeSend: (xhr, settings) ->
        xhr.setRequestHeader 'Accept', 'application/json'

`export default BoxedAuthenticator`
