`import Ember from 'ember'`

SoundEffectService = Ember.Service.extend
  availableIn: ['routes']
  sounds: null
  createSound: (name) ->
    sounds = @get 'sounds'
    sounds ?= {}
    sounds[name] = $("<audio id='#{name}' src='audio/#{name}.mp3'></audio>")[0]
    @set 'sounds', sounds
  play: (name) ->
    sounds = @get 'sounds'
    if !sounds?[name]
      @createSound name
      sounds = @get 'sounds'
    sounds[name].play()

`export default SoundEffectService`
