const locators = [
  "css",
  "xpath",
  "id",
  "name",
  "linkText",
  "partialLinkText",
  "className",
  "tagName",
  "buttonText",
  "partialButtonText",
  "cssContainingText"
];

const locator = type => (...values) => ({
  locator: type,
  value: values
});

const objects = locators.reduce((acc, loc) => {
  acc[loc] = locator(loc);
  return acc;
}, {});

module.exports = objects;
