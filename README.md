# purescript-default

[![Latest release](http://img.shields.io/github/release/purescript/purescript-default.svg)](https://github.com/purescript/purescript-default/releases)

Default values for purescript types. Inspired by Haskell's [data-default package](https://hackage.haskell.org/package/data-default)

## Installation

```
bower install purescript-default
```

## Documentation

Module documentation is [published on Pursuit](http://pursuit.purescript.org/packages/purescript-default).

## Example

```

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