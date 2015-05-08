# Takes two parameters: container and app
initialize = (container, app) ->
  soundEffectService = container.lookup 'service:sound-effect'
  $('body').one 'click', ->
    soundEffectService.initializeSound 'processing'
    soundEffectService.initializeSound 'acknowledge'
    soundEffectService.initializeSound 'failure'
  $('body').on 'click', 'button, a', ->
    soundEffectService.play 'beep'
  $('body').on 'focus', '*', ->
    soundEffectService.play 'beep'

SoundInitializer =
  name: 'sound'
  initialize: initialize

`export {initialize}`
`export default SoundInitializer`
