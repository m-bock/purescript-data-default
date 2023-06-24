module Test.Main where

import Prelude

import Data.Default (def)
import Data.Maybe (Maybe, isNothing)
import Effect (Effect)
import Test.Assert (assert')

main :: Effect Unit
main = do
    _ <- assert' "def of Int failed"                (def == 0) 
    _ <- assert' "def of Maybe String failed"       (isNothing $ (def :: Maybe String))
    
    let { name, age } = def :: { name :: String, age :: Int }
    _ <- assert' "def of Basic Record failed"       (name == "" && age == 0)

    pure unit