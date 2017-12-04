module DOM.DOMParser
  ( newDOMParser
  , parseFromString
  , parseHTMLFromString
  , parseSVGFromString
  , parseXMLFromString
  ) where

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.DOMParser.Types (DOMParser, DOMParserType(..), documentTypeToMIMETypeString)
import DOM.Node.Types (Document)

--| Create a new `DOMParser`
foreign import newDOMParser ∷ ∀ a. Eff (dom ∷ DOM | a) DOMParser

foreign import parseFromString_ ∷ String → String → DOMParser → Document

--| Parse a DOM from a string
parseFromString ∷ DOMParserType → String → DOMParser → Document
parseFromString docType =
  parseFromString_ (documentTypeToMIMETypeString docType)

--| Convience function to parse HTML from a string
parseHTMLFromString ∷ String → DOMParser → Document
parseHTMLFromString =
  parseFromString HTML

--| Convience function to parse SVG from a string
parseSVGFromString ∷ String → DOMParser → Document
parseSVGFromString =
  parseFromString SVG

--| Convience function to parse XML from a string
parseXMLFromString ∷ String → DOMParser → Document
parseXMLFromString =
  parseFromString XML
