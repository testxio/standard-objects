locators = [
  'css'
  'xpath'
  'id'
  'name'
  'linkText'
  'partialLinkText'
  'className'
  'tagName'
  'buttonText'
  'partialButtonText'
  'cssContainingText'
]

locator = (type) -> (values...) ->
  locator: type
  value: values

labeled = ->
  protractor.By.addLocator 'labeled', (labelText, parent, root) ->
    using = parent or document
    labels = using.querySelectorAll 'label'
    labelsWithText = Array.prototype.filter.call labels, (label) ->
      label.textContent is labelText
    Array.prototype.map.call labelsWithText, (label) ->
      using.getElementById label?.getAttribute('for')

  (label) ->
    locator: 'labeled'
    value: label

objects = {}
module.exports = do ->
  for loc in locators
    objects[loc] = locator(loc)
  objects['labeled'] = labeled()
  objects
