# purescript-data-default

[![Latest release](http://img.shields.io/github/release/thought2/purescript-data-default.svg)](https://github.com/thought2/purescript-data-default/releases)

Default values for purescript types. Inspired by Haskell's [data-default package](https://hackage.haskell.org/package/data-default)

## Installation

```
bower install purescript-data-default
```

## Documentation

Module documentation is [published on Pursuit](http://pursuit.purescript.org/packages/purescript-data-default).

## Example

```

import Data.Default
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
```