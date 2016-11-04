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
  'deepCss'
]

locator = (type) -> (value) ->
  locator: type
  value: value

objects = {}
module.exports = do ->
  for loc in locators
    objects[loc] = locator(loc)
  objects
