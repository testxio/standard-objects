assert = require 'assert'
objects = require '.'


assert objects.id('id'),
  locator: 'id'
  value: ['id']

assert objects.cssContainingText('css', 'text'),
  locator: 'cssContainingText'
  value: ['css', 'text']
