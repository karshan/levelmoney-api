{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.DisplayType (DisplayType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data DisplayType = NEW_MONTH
                 deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                           Prelude'.Generic)

instance P'.Mergeable DisplayType

instance Prelude'.Bounded DisplayType where
  minBound = NEW_MONTH
  maxBound = NEW_MONTH

instance P'.Default DisplayType where
  defaultValue = NEW_MONTH

toMaybe'Enum :: Prelude'.Int -> P'.Maybe DisplayType
toMaybe'Enum 1 = Prelude'.Just NEW_MONTH
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum DisplayType where
  fromEnum NEW_MONTH = 1
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.DisplayType") . toMaybe'Enum
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.DisplayType"
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.DisplayType"

instance P'.Wire DisplayType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB DisplayType

instance P'.MessageAPI msg' (msg' -> DisplayType) DisplayType where
  getVal m' f' = f' m'

instance P'.ReflectEnum DisplayType where
  reflectEnum = [(1, "NEW_MONTH", NEW_MONTH)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.DisplayType") [] ["LevelMoney"] "DisplayType") ["LevelMoney", "DisplayType.hs"]
      [(1, "NEW_MONTH")]

instance P'.TextType DisplayType where
  tellT = P'.tellShow
  getT = P'.getRead