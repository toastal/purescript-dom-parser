module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Test.Data as TD

import Web.DOM.Document (Document)
import Web.DOM.DOMParser (DOMParser, makeDOMParser, parseXMLFromString)

parseNoteDoc :: DOMParser -> Document
parseNoteDoc dp = parseXMLFromString TD.noteXml dp

main :: Effect Unit
main = do
  domParser <- makeDOMParser
  note <- pure $ parseNoteDoc domParser
  log "TODO: You should add some tests."
