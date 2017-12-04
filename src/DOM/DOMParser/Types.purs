module DOM.DOMParser.Types where

foreign import data DOMParser ∷ Type

data DOMParserType
  = HTML
  | SVG
  | XML

documentTypeToMIMETypeString ∷ DOMParserType → String
documentTypeToMIMETypeString = case _ of
  HTML → "text/html"
  SVG → "image/svg+xml"
  XML → "application/xml"
