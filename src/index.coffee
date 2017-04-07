'use strict'

Array.prototype.remove = (thing) ->
  @splice @.indexOf(thing), 1
Array.prototype.moveUp = (thing) ->
  index = @indexOf thing
  if index > 0
    @splice index, 1
    @splice index - 1, null, thing
Array.prototype.moveDown = (thing) ->
  index = @indexOf thing
  if index > -1 and index < @length - 1
    @splice index, 1
    @splice index + 1, null, thing
Array.prototype.moveFirst = (thing) ->
  index = @indexOf thing
  if index > 0
    @splice index, 1
    @splice 0, null, thing
Array.prototype.moveLast = (thing) ->
  index = @indexOf thing
  if index > -1 and index < @length - 1
    @splice index, 1
    @splice @length, null, thing