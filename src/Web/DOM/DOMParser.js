/* Web.DOM.DOMParser */
"use strict";

exports.makeDOMParser = function () {
  return new DOMParser();
};

exports.parseFromString = function (documentType) {
  return function (sourceString) {
    return function (domParser) {
      return function () { // Effect thunk
        return domParser.parseFromString(sourceString, documentType);
      };
    };
  };
};
