module Default where

import Prelude
import Data.Maybe (Maybe(Nothing))

class Default a where
  def :: a

instance defaultInt :: Default Int where
  def = 0

instance defaultNumber :: Default Number where
  def = 0.0

instance defaultMaybe :: Default (Maybe a) where
  def = Nothing

instance defaultString :: Default String where
  def = ""

instance defaultBoolean :: Default Boolean where
  def = false

instance defaultArray :: Default (Array a) where
  def = mempty

instance defaultUnit :: Default Unit where
  def = unit
