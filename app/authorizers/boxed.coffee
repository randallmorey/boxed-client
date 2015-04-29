`import BaseAuthorizer from 'simple-auth/authorizers/base'`

BoxedAuthorizer = BaseAuthorizer.extend
  authorize: (jqXhr, options) ->
    token = @session.get 'id'
    jqXhr.setRequestHeader 'Authorization', token

`export default BoxedAuthorizer`
