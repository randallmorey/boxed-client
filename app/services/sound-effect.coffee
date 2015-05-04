`import Ember from 'ember'`

SoundEffectService = Ember.Service.extend
  sounds: null
  initializeSound: (name) ->
    sounds = @get 'sounds'
    sounds ?= {}
    if !sounds?[name]
      sounds[name] = $("<audio id='#{name}' src='audio/#{name}.mp3'></audio>")[0]
      sounds[name].play()
      @set 'sounds', sounds
  play: (name) ->
    @initializeSound name
    sound = @get "sounds.#{name}"
    sound.play()

`export default SoundEffectService`
