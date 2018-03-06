const assert = require("assert");
const objects = require(".");

assert.deepEqual(objects.id("myId"), {
  locator: "id",
  value: ["myId"]
});

assert.deepEqual(objects.cssContainingText(".my-class", "my text"), {
  locator: "cssContainingText",
  value: [".my-class", "my text"]
});
