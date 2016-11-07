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

objects = {}
module.exports = do ->
  for loc in locators
    objects[loc] = locator(loc)
  objects
