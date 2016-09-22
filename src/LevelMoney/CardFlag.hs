{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.CardFlag (CardFlag(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data CardFlag = UNKNOWN_FLAG
              | DISMISSED
              deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CardFlag

instance Prelude'.Bounded CardFlag where
  minBound = UNKNOWN_FLAG
  maxBound = DISMISSED

instance P'.Default CardFlag where
  defaultValue = UNKNOWN_FLAG

toMaybe'Enum :: Prelude'.Int -> P'.Maybe CardFlag
toMaybe'Enum (-1) = Prelude'.Just UNKNOWN_FLAG
toMaybe'Enum 1 = Prelude'.Just DISMISSED
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum CardFlag where
  fromEnum UNKNOWN_FLAG = (-1)
  fromEnum DISMISSED = 1
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.CardFlag") . toMaybe'Enum
  succ UNKNOWN_FLAG = DISMISSED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.CardFlag"
  pred DISMISSED = UNKNOWN_FLAG
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.CardFlag"

instance P'.Wire CardFlag where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB CardFlag

instance P'.MessageAPI msg' (msg' -> CardFlag) CardFlag where
  getVal m' f' = f' m'

instance P'.ReflectEnum CardFlag where
  reflectEnum = [((-1), "UNKNOWN_FLAG", UNKNOWN_FLAG), (1, "DISMISSED", DISMISSED)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.CardFlag") [] ["LevelMoney"] "CardFlag") ["LevelMoney", "CardFlag.hs"]
      [((-1), "UNKNOWN_FLAG"), (1, "DISMISSED")]

instance P'.TextType CardFlag where
  tellT = P'.tellShow
  getT = P'.getRead