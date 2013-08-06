
applescript = require 'applescript'

runScript = (script) ->
  applescript.execString script, ->

iTunes = (sth) ->
  runScript "tell application \"iTunes\" to #{sth}"

exports.commands =
  play:
    desc: 'Play Music'
    action: -> iTunes 'play'

  pause:
    desc: 'Pause Music'
    action: -> iTunes 'pause'

  toggle:
    desc: 'Play or Pause'
    action: -> iTunes 'playpause'

  next:
    desc: 'Next Track'
    action: -> iTunes 'next track'

  previous:
    desc: 'Previous Track'
    action: -> iTunes 'previous track'

  stop:
    desc: 'Stop Music'
    action: -> iTunes 'stop'

