module Default where

import Prelude
import Data.List (List)
import Data.Maybe (Maybe(Nothing))
import Data.Symbol (class IsSymbol, SProxy(..), reflectSymbol)
import Prim.Row as Row
import Prim.RowList as RL
import Record as Record
import Type.Data.RowList (RLProxy(..))

-- | Typeclass to provide a default value for a type
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

instance defaultList :: Default (List a) where
  def = mempty

instance defaultUnit :: Default Unit where
  def = unit

instance defaultRecord ::
  ( GDefault row list
  , RL.RowToList row list
  ) =>
  Default (Record row) where
  def = gDef (RLProxy :: RLProxy list)

-- RECORD
class GDefault (row :: #Type) (list :: RL.RowList) | list -> row where
  gDef :: RLProxy list -> Record row

instance gDefNil :: GDefault () RL.Nil where
  gDef _ = {}

instance gDefCons ::
  ( Default value
  , GDefault rowTail tail
  , IsSymbol field
  , Row.Cons field value rowTail row
  , Row.Lacks field rowTail
  ) =>
  GDefault row (RL.Cons field value tail) where
  gDef val =
    let
      sProxy :: SProxy field
      sProxy = SProxy

      fieldName = reflectSymbol sProxy

      rest = gDef (RLProxy :: RLProxy tail)
    in
      Record.insert sProxy def rest
