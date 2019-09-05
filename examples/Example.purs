module Example where

import Default
import Data.Maybe (Maybe)

-- Has value 1
x :: Int
x = def

-- Has value Nothing
y :: Maybe String
y = def

data User
  = User String Int

instance defaultUser :: Default User where
  def = User "Max" 99

-- Has value `User "Max" 99`
user :: User
user = def

-- Has value `{name : "", user : User "Max" 99 }`
record :: { name :: String, user :: User }
record = def
