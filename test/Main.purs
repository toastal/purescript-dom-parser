-- THIS ISN'T A TEST
-- I don't want to deal with Selenium and such
-- But I used this Main to see that it worked.

module Main where

import Prelude

import Control.Monad.Eff (Eff)
import DOM (DOM)
import DOM.DOMParser as DOMParser

main ∷ ∀ eff. Eff (dom ∷ DOM | eff) Unit
main = do
  dp ← DOMParser.newDOMParser
  let html = """<html><body><div id="test">hello world</div></body></html>"""
  let h = DOMParser.parseHTMLFromString html dp
  pure unit
