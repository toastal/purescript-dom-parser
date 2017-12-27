module DOM.DOMParser
  ( DOMParser
  , newDOMParser
  , parseFromString
  , parseHTMLFromString
  , parseSVGFromString
  , parseXMLFromString
  ) where

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.Node.Types (Document)

foreign import data DOMParser ∷ Type

--| Create a new `DOMParser`
foreign import newDOMParser ∷ ∀ a. Eff (dom ∷ DOM | a) DOMParser

foreign import parseFromString ∷ String → String → DOMParser → Document

--| Convience function to parse HTML from a string
parseHTMLFromString ∷ String → DOMParser → Document
parseHTMLFromString =
  parseFromString "text/html"

--| Convience function to parse SVG from a string
parseSVGFromString ∷ String → DOMParser → Document
parseSVGFromString =
  parseFromString "image/svg+xml"

--| Convience function to parse XML from a string
parseXMLFromString ∷ String → DOMParser → Document
parseXMLFromString =
  parseFromString "application/xml"
