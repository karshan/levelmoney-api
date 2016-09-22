{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.ExplainerType (ExplainerType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ExplainerType = WELCOME
                   | RENAME_ACCOUNTS
                   | DONT_COUNT
                   | ICONS
                   | TRACKERS
                   | ENABLE_AUTOSAVE
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable ExplainerType

instance Prelude'.Bounded ExplainerType where
  minBound = WELCOME
  maxBound = ENABLE_AUTOSAVE

instance P'.Default ExplainerType where
  defaultValue = WELCOME

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ExplainerType
toMaybe'Enum 1 = Prelude'.Just WELCOME
toMaybe'Enum 2 = Prelude'.Just RENAME_ACCOUNTS
toMaybe'Enum 4 = Prelude'.Just DONT_COUNT
toMaybe'Enum 5 = Prelude'.Just ICONS
toMaybe'Enum 6 = Prelude'.Just TRACKERS
toMaybe'Enum 7 = Prelude'.Just ENABLE_AUTOSAVE
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ExplainerType where
  fromEnum WELCOME = 1
  fromEnum RENAME_ACCOUNTS = 2
  fromEnum DONT_COUNT = 4
  fromEnum ICONS = 5
  fromEnum TRACKERS = 6
  fromEnum ENABLE_AUTOSAVE = 7
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.ExplainerType") . toMaybe'Enum
  succ WELCOME = RENAME_ACCOUNTS
  succ RENAME_ACCOUNTS = DONT_COUNT
  succ DONT_COUNT = ICONS
  succ ICONS = TRACKERS
  succ TRACKERS = ENABLE_AUTOSAVE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.ExplainerType"
  pred RENAME_ACCOUNTS = WELCOME
  pred DONT_COUNT = RENAME_ACCOUNTS
  pred ICONS = DONT_COUNT
  pred TRACKERS = ICONS
  pred ENABLE_AUTOSAVE = TRACKERS
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.ExplainerType"

instance P'.Wire ExplainerType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ExplainerType

instance P'.MessageAPI msg' (msg' -> ExplainerType) ExplainerType where
  getVal m' f' = f' m'

instance P'.ReflectEnum ExplainerType where
  reflectEnum
   = [(1, "WELCOME", WELCOME), (2, "RENAME_ACCOUNTS", RENAME_ACCOUNTS), (4, "DONT_COUNT", DONT_COUNT), (5, "ICONS", ICONS),
      (6, "TRACKERS", TRACKERS), (7, "ENABLE_AUTOSAVE", ENABLE_AUTOSAVE)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.ExplainerType") [] ["LevelMoney"] "ExplainerType")
      ["LevelMoney", "ExplainerType.hs"]
      [(1, "WELCOME"), (2, "RENAME_ACCOUNTS"), (4, "DONT_COUNT"), (5, "ICONS"), (6, "TRACKERS"), (7, "ENABLE_AUTOSAVE")]

instance P'.TextType ExplainerType where
  tellT = P'.tellShow
  getT = P'.getRead