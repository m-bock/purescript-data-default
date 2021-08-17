{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "data-default"
, dependencies =
  [ "assert", "lists", "maybe", "psci-support", "record" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
, license = "Apache-2.0"
, repository = "git@github.com:thought2/purescript-data-default.git"
}
