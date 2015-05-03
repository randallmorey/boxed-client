# Takes two parameters: container and app
initialize = ->
  $('body').on 'click', 'a', ->
    # no op for now

SoundInitializer =
  name: 'sound'
  initialize: initialize

`export {initialize}`
`export default SoundInitializer`
