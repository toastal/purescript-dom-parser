module DOM.DOMParser.Types where

foreign import data DOMParser :: Type

data DOMParserType
  = HTML
  | SVG
  | XML

documentTypeToString :: DOMParserType -> String
documentTypeToString = case _ of
  HTML -> "text/html"
  SVG -> "image/svg+xml"
  XML -> "application/xml"
