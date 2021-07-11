module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.Monoid.Conj

main :: Effect Unit
main = do
  log $ show $ (_ > 1) && (_ < 10) $ 3
  log $ show $ (Conj <$> (_ > 1)) <> (Conj <$> (_ < 10)) $ 3
  log $ show $ (\c -> case c of Conj a -> a) $ (Conj <$> (_ > 1)) <> (Conj <$> (_ < 10)) $ 3
