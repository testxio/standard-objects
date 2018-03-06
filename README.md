# TestX Standard objects

This package contains standard objects for [testx](http://testx.io/testx). These object locators come from [Protractor](https://www.protractortest.org).

## Installation

Install the package with:

```sh
npm install @testx/objects-standard --save
```

## Usage

### In your object files

```JavaScript
const { xpath, css } = require('@testx/objects-standard');

module.exports = {
  "MyObject": xpath("//input"),
  "MyOtherObject": css(".cool-class")
}
```

And then in your **testx** script:

```testx
- go to:
    url: /
- set:
    MyObject: some stuff
    MyOtherObject: other things
```

### Directly in your **testx** scripts

Add to your tests like any other **testx** node module. In your config file, as part of the _onPrepare_ function:

```JavaScript
testx.objects.add(require('@testx/objects-standard'))
```

Then use these as any other (functional) object reference:

```testx
- go to:
    url: /
- set:
    linkText('Login'):
    name('username'): testuser
    name('password'): verysecret
    buttonText('Login'):
```

**NOTE: Avoid using it this way too often or you may end up with fragile set of tests.**

## Available objects

This package exposes almost all non-angular protractor (web driver++) element locators. It also adds some custom ones.

| Object reference                                                                                       | Description                                                            |
| ------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------- |
| [css](http://www.protractortest.org/#/api?view=webdriver.By.css)                                       | Locates elements using a CSS selector.                                 |
| [xpath](http://www.protractortest.org/#/api?view=webdriver.By.xpath)                                   | Locates elements matching a XPath selector.                            |
| [id](http://www.protractortest.org/#/api?view=webdriver.By.id)                                         | Locates an element by its ID.                                          |
| [name](http://www.protractortest.org/#/api?view=webdriver.By.name)                                     | Locates elements whose name attribute has the given value.             |
| [linkText](http://www.protractortest.org/#/api?view=webdriver.By.linkText)                             | Locates link elements whose visible text matches the given string.     |
| [partialLinkText](http://www.protractortest.org/#/api?view=webdriver.By.partialLinkText)               | Locates link elements whose visible text contains the given substring. |
| [className](http://www.protractortest.org/#/api?view=webdriver.By.className)                           | Locates elements that have a specific class name.                      |
| [tagName](http://www.protractortest.org/#/api?view=webdriver.By.tagName)                               | Locates elements with a given tag name.                                |
| [buttonText](http://www.protractortest.org/#/api?view=ProtractorBy.prototype.buttonText)               | Find a button by text.                                                 |
| [partialButtonText](http://www.protractortest.org/#/api?view=ProtractorBy.prototype.partialButtonText) | Find a button by partial text.                                         |
| [cssContainingText](http://www.protractortest.org/#/api?view=ProtractorBy.prototype.cssContainingText) | Find elements by CSS which contain a certain string.                   |
