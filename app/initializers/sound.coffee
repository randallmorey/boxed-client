# Takes two parameters: container and app
initialize = (container, app) ->
  $('body').on 'click', 'button, a', ->
    container.lookup('service:sound-effect').play 'beep'

SoundInitializer =
  name: 'sound'
  initialize: initialize

`export {initialize}`
`export default SoundInitializer`
