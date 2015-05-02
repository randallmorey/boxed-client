# Takes two parameters: container and app
initialize = ->
  $('body').on 'click', 'a', ->
    $('#beep-standard')[0].play()

SoundInitializer =
  name: 'sound'
  initialize: initialize

`export {initialize}`
`export default SoundInitializer`
