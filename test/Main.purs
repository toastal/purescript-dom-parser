module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Test.Data as TD

import Web.DOM.Document (Document)
import Web.DOM.DOMParser (DOMParser, makeDOMParser, parseXMLFromString)

parseNoteDoc :: DOMParser -> Effect Document
parseNoteDoc = parseXMLFromString TD.noteXml

-- parseGarbage :: DOMParser -> Effect Document
-- parseGarbage dp = parseXMLFromString "`~~`lkjlj3424" dp

main :: Effect Unit
main = do
  domParser <- makeDOMParser
  note <- parseNoteDoc domParser
  -- garbageOut <- parseGarbage domParser
  log "TODO: You should add some tests."
