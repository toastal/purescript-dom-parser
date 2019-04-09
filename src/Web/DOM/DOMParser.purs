module Web.DOM.DOMParser
  ( DOMParser
  , makeDOMParser
  , parseFromString
  , parseHTMLFromString
  , parseSVGFromString
  , parseXMLFromString
  ) where

import Effect (Effect)
import Web.DOM.Document (Document)

foreign import data DOMParser ∷ Type

--| Create a new `DOMParser`
foreign import makeDOMParser ∷ Effect DOMParser

--| Parse a string with the first argumet being a string for a doctype
foreign import parseFromString ∷ String → String → DOMParser → Document

--| Convience function to parse HTML from a string, partially applying
--| `parseFromString` with "text/html"
parseHTMLFromString ∷ String → DOMParser → Document
parseHTMLFromString =
  parseFromString "text/html"

--| Convience function to parse SVG from a string, partially applying
--| `parseFromString` with "image/svg+xml"
parseSVGFromString ∷ String → DOMParser → Document
parseSVGFromString =
  parseFromString "image/svg+xml"

--| Convience function to parse XML from a string, partially applying
--| `parseFromString` with "application/xml"
parseXMLFromString ∷ String → DOMParser → Document
parseXMLFromString =
  parseFromString "application/xml"
