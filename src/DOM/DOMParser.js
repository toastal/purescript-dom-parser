/* DOM.DOMParser */
"use strict";

exports.newDOMParser = function () {
  return new DOMParser();
};

exports.parseFromString = function (documentType) {
  return function (sourceString) {
    return function (domParser) {
      return domParser.parseFromString(sourceString, documentType);
    };
  };
};
