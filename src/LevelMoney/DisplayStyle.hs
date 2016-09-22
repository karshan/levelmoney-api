{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.DisplayStyle (DisplayStyle(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data DisplayStyle = MONTH_TO_MONTH
                  | ALL_TIME
                  deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                            Prelude'.Generic)

instance P'.Mergeable DisplayStyle

instance Prelude'.Bounded DisplayStyle where
  minBound = MONTH_TO_MONTH
  maxBound = ALL_TIME

instance P'.Default DisplayStyle where
  defaultValue = MONTH_TO_MONTH

toMaybe'Enum :: Prelude'.Int -> P'.Maybe DisplayStyle
toMaybe'Enum 1 = Prelude'.Just MONTH_TO_MONTH
toMaybe'Enum 2 = Prelude'.Just ALL_TIME
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum DisplayStyle where
  fromEnum MONTH_TO_MONTH = 1
  fromEnum ALL_TIME = 2
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.DisplayStyle") . toMaybe'Enum
  succ MONTH_TO_MONTH = ALL_TIME
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.DisplayStyle"
  pred ALL_TIME = MONTH_TO_MONTH
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.DisplayStyle"

instance P'.Wire DisplayStyle where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB DisplayStyle

instance P'.MessageAPI msg' (msg' -> DisplayStyle) DisplayStyle where
  getVal m' f' = f' m'

instance P'.ReflectEnum DisplayStyle where
  reflectEnum = [(1, "MONTH_TO_MONTH", MONTH_TO_MONTH), (2, "ALL_TIME", ALL_TIME)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.DisplayStyle") [] ["LevelMoney"] "DisplayStyle")
      ["LevelMoney", "DisplayStyle.hs"]
      [(1, "MONTH_TO_MONTH"), (2, "ALL_TIME")]

instance P'.TextType DisplayStyle where
  tellT = P'.tellShow
  getT = P'.getRead