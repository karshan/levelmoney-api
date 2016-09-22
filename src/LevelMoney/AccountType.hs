{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.AccountType (AccountType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data AccountType = UNRECOGNIZED
                 | ASSET
                 | CREDIT_CARD
                 deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                           Prelude'.Generic)

instance P'.Mergeable AccountType

instance Prelude'.Bounded AccountType where
  minBound = UNRECOGNIZED
  maxBound = CREDIT_CARD

instance P'.Default AccountType where
  defaultValue = UNRECOGNIZED

toMaybe'Enum :: Prelude'.Int -> P'.Maybe AccountType
toMaybe'Enum 0 = Prelude'.Just UNRECOGNIZED
toMaybe'Enum 1 = Prelude'.Just ASSET
toMaybe'Enum 2 = Prelude'.Just CREDIT_CARD
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum AccountType where
  fromEnum UNRECOGNIZED = 0
  fromEnum ASSET = 1
  fromEnum CREDIT_CARD = 2
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.AccountType") . toMaybe'Enum
  succ UNRECOGNIZED = ASSET
  succ ASSET = CREDIT_CARD
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.AccountType"
  pred ASSET = UNRECOGNIZED
  pred CREDIT_CARD = ASSET
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.AccountType"

instance P'.Wire AccountType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB AccountType

instance P'.MessageAPI msg' (msg' -> AccountType) AccountType where
  getVal m' f' = f' m'

instance P'.ReflectEnum AccountType where
  reflectEnum = [(0, "UNRECOGNIZED", UNRECOGNIZED), (1, "ASSET", ASSET), (2, "CREDIT_CARD", CREDIT_CARD)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.AccountType") [] ["LevelMoney"] "AccountType") ["LevelMoney", "AccountType.hs"]
      [(0, "UNRECOGNIZED"), (1, "ASSET"), (2, "CREDIT_CARD")]

instance P'.TextType AccountType where
  tellT = P'.tellShow
  getT = P'.getRead