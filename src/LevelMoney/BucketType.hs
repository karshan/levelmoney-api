{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.BucketType (BucketType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data BucketType = UNKNOWN_BUCKET
                | LEGACY_INSIGHT
                | BILL
                | MAGIC_DONT_COUNT
                | DEBIT_INSIGHT
                | CREDIT_INSIGHT
                | RECURRING_INCOME
                | MAGIC_TRANSFER
                | MAGIC_SAVINGS
                deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                          Prelude'.Generic)

instance P'.Mergeable BucketType

instance Prelude'.Bounded BucketType where
  minBound = UNKNOWN_BUCKET
  maxBound = MAGIC_SAVINGS

instance P'.Default BucketType where
  defaultValue = UNKNOWN_BUCKET

toMaybe'Enum :: Prelude'.Int -> P'.Maybe BucketType
toMaybe'Enum (-1) = Prelude'.Just UNKNOWN_BUCKET
toMaybe'Enum 0 = Prelude'.Just LEGACY_INSIGHT
toMaybe'Enum 1 = Prelude'.Just BILL
toMaybe'Enum 3 = Prelude'.Just MAGIC_DONT_COUNT
toMaybe'Enum 5 = Prelude'.Just DEBIT_INSIGHT
toMaybe'Enum 6 = Prelude'.Just CREDIT_INSIGHT
toMaybe'Enum 7 = Prelude'.Just RECURRING_INCOME
toMaybe'Enum 8 = Prelude'.Just MAGIC_TRANSFER
toMaybe'Enum 9 = Prelude'.Just MAGIC_SAVINGS
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum BucketType where
  fromEnum UNKNOWN_BUCKET = (-1)
  fromEnum LEGACY_INSIGHT = 0
  fromEnum BILL = 1
  fromEnum MAGIC_DONT_COUNT = 3
  fromEnum DEBIT_INSIGHT = 5
  fromEnum CREDIT_INSIGHT = 6
  fromEnum RECURRING_INCOME = 7
  fromEnum MAGIC_TRANSFER = 8
  fromEnum MAGIC_SAVINGS = 9
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.BucketType") . toMaybe'Enum
  succ UNKNOWN_BUCKET = LEGACY_INSIGHT
  succ LEGACY_INSIGHT = BILL
  succ BILL = MAGIC_DONT_COUNT
  succ MAGIC_DONT_COUNT = DEBIT_INSIGHT
  succ DEBIT_INSIGHT = CREDIT_INSIGHT
  succ CREDIT_INSIGHT = RECURRING_INCOME
  succ RECURRING_INCOME = MAGIC_TRANSFER
  succ MAGIC_TRANSFER = MAGIC_SAVINGS
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.BucketType"
  pred LEGACY_INSIGHT = UNKNOWN_BUCKET
  pred BILL = LEGACY_INSIGHT
  pred MAGIC_DONT_COUNT = BILL
  pred DEBIT_INSIGHT = MAGIC_DONT_COUNT
  pred CREDIT_INSIGHT = DEBIT_INSIGHT
  pred RECURRING_INCOME = CREDIT_INSIGHT
  pred MAGIC_TRANSFER = RECURRING_INCOME
  pred MAGIC_SAVINGS = MAGIC_TRANSFER
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.BucketType"

instance P'.Wire BucketType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB BucketType

instance P'.MessageAPI msg' (msg' -> BucketType) BucketType where
  getVal m' f' = f' m'

instance P'.ReflectEnum BucketType where
  reflectEnum
   = [((-1), "UNKNOWN_BUCKET", UNKNOWN_BUCKET), (0, "LEGACY_INSIGHT", LEGACY_INSIGHT), (1, "BILL", BILL),
      (3, "MAGIC_DONT_COUNT", MAGIC_DONT_COUNT), (5, "DEBIT_INSIGHT", DEBIT_INSIGHT), (6, "CREDIT_INSIGHT", CREDIT_INSIGHT),
      (7, "RECURRING_INCOME", RECURRING_INCOME), (8, "MAGIC_TRANSFER", MAGIC_TRANSFER), (9, "MAGIC_SAVINGS", MAGIC_SAVINGS)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.BucketType") [] ["LevelMoney"] "BucketType") ["LevelMoney", "BucketType.hs"]
      [((-1), "UNKNOWN_BUCKET"), (0, "LEGACY_INSIGHT"), (1, "BILL"), (3, "MAGIC_DONT_COUNT"), (5, "DEBIT_INSIGHT"),
       (6, "CREDIT_INSIGHT"), (7, "RECURRING_INCOME"), (8, "MAGIC_TRANSFER"), (9, "MAGIC_SAVINGS")]

instance P'.TextType BucketType where
  tellT = P'.tellShow
  getT = P'.getRead