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

const labeled = function() {
  protractor.By.addLocator("labeled", function(labelText, parent, root) {
    const using = parent || document;
    const labels = using.querySelectorAll("label");
    const labelsWithText = Array.prototype.filter.call(
      labels,
      label => label.textContent === labelText
    );
    return Array.prototype.map.call(labelsWithText, label =>
      using.getElementById(
        label != null ? label.getAttribute("for") : undefined
      )
    );
  });

  return label => ({
    locator: "labeled",
    value: label
  });
};

const objects = locators.reduce((acc, loc) => {
  acc[loc] = locator(loc);
  return acc;
}, {});
objects["labeled"] = labeled();

module.exports = objects;
