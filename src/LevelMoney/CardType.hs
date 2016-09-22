{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.CardType (CardType(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data CardType = UNKNOWN_CARD
              | NORMIES
              | TRANSFER
              | BUCKETED_TRANSACTIONS
              | SUGGESTED_TRANSACTION
              | EXPLAINER
              | ADJUST_SPENDABLE
              | GENERIC_TEXT
              | SUGGESTED_ADD_TO_EXISTING_BUCKET
              | DISPLAY
              | SUMMARY
              | UPCOMING_SMANSFER
              | PENDING_SMANSFER
              | CANCELLED_SMANSFER
              | CLEARED_SMANSFER
              deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CardType

instance Prelude'.Bounded CardType where
  minBound = UNKNOWN_CARD
  maxBound = CLEARED_SMANSFER

instance P'.Default CardType where
  defaultValue = UNKNOWN_CARD

toMaybe'Enum :: Prelude'.Int -> P'.Maybe CardType
toMaybe'Enum (-1) = Prelude'.Just UNKNOWN_CARD
toMaybe'Enum 1 = Prelude'.Just NORMIES
toMaybe'Enum 2 = Prelude'.Just TRANSFER
toMaybe'Enum 3 = Prelude'.Just BUCKETED_TRANSACTIONS
toMaybe'Enum 4 = Prelude'.Just SUGGESTED_TRANSACTION
toMaybe'Enum 7 = Prelude'.Just EXPLAINER
toMaybe'Enum 8 = Prelude'.Just ADJUST_SPENDABLE
toMaybe'Enum 9 = Prelude'.Just GENERIC_TEXT
toMaybe'Enum 10 = Prelude'.Just SUGGESTED_ADD_TO_EXISTING_BUCKET
toMaybe'Enum 11 = Prelude'.Just DISPLAY
toMaybe'Enum 12 = Prelude'.Just SUMMARY
toMaybe'Enum 13 = Prelude'.Just UPCOMING_SMANSFER
toMaybe'Enum 14 = Prelude'.Just PENDING_SMANSFER
toMaybe'Enum 15 = Prelude'.Just CANCELLED_SMANSFER
toMaybe'Enum 16 = Prelude'.Just CLEARED_SMANSFER
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum CardType where
  fromEnum UNKNOWN_CARD = (-1)
  fromEnum NORMIES = 1
  fromEnum TRANSFER = 2
  fromEnum BUCKETED_TRANSACTIONS = 3
  fromEnum SUGGESTED_TRANSACTION = 4
  fromEnum EXPLAINER = 7
  fromEnum ADJUST_SPENDABLE = 8
  fromEnum GENERIC_TEXT = 9
  fromEnum SUGGESTED_ADD_TO_EXISTING_BUCKET = 10
  fromEnum DISPLAY = 11
  fromEnum SUMMARY = 12
  fromEnum UPCOMING_SMANSFER = 13
  fromEnum PENDING_SMANSFER = 14
  fromEnum CANCELLED_SMANSFER = 15
  fromEnum CLEARED_SMANSFER = 16
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.CardType") . toMaybe'Enum
  succ UNKNOWN_CARD = NORMIES
  succ NORMIES = TRANSFER
  succ TRANSFER = BUCKETED_TRANSACTIONS
  succ BUCKETED_TRANSACTIONS = SUGGESTED_TRANSACTION
  succ SUGGESTED_TRANSACTION = EXPLAINER
  succ EXPLAINER = ADJUST_SPENDABLE
  succ ADJUST_SPENDABLE = GENERIC_TEXT
  succ GENERIC_TEXT = SUGGESTED_ADD_TO_EXISTING_BUCKET
  succ SUGGESTED_ADD_TO_EXISTING_BUCKET = DISPLAY
  succ DISPLAY = SUMMARY
  succ SUMMARY = UPCOMING_SMANSFER
  succ UPCOMING_SMANSFER = PENDING_SMANSFER
  succ PENDING_SMANSFER = CANCELLED_SMANSFER
  succ CANCELLED_SMANSFER = CLEARED_SMANSFER
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.CardType"
  pred NORMIES = UNKNOWN_CARD
  pred TRANSFER = NORMIES
  pred BUCKETED_TRANSACTIONS = TRANSFER
  pred SUGGESTED_TRANSACTION = BUCKETED_TRANSACTIONS
  pred EXPLAINER = SUGGESTED_TRANSACTION
  pred ADJUST_SPENDABLE = EXPLAINER
  pred GENERIC_TEXT = ADJUST_SPENDABLE
  pred SUGGESTED_ADD_TO_EXISTING_BUCKET = GENERIC_TEXT
  pred DISPLAY = SUGGESTED_ADD_TO_EXISTING_BUCKET
  pred SUMMARY = DISPLAY
  pred UPCOMING_SMANSFER = SUMMARY
  pred PENDING_SMANSFER = UPCOMING_SMANSFER
  pred CANCELLED_SMANSFER = PENDING_SMANSFER
  pred CLEARED_SMANSFER = CANCELLED_SMANSFER
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.CardType"

instance P'.Wire CardType where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB CardType

instance P'.MessageAPI msg' (msg' -> CardType) CardType where
  getVal m' f' = f' m'

instance P'.ReflectEnum CardType where
  reflectEnum
   = [((-1), "UNKNOWN_CARD", UNKNOWN_CARD), (1, "NORMIES", NORMIES), (2, "TRANSFER", TRANSFER),
      (3, "BUCKETED_TRANSACTIONS", BUCKETED_TRANSACTIONS), (4, "SUGGESTED_TRANSACTION", SUGGESTED_TRANSACTION),
      (7, "EXPLAINER", EXPLAINER), (8, "ADJUST_SPENDABLE", ADJUST_SPENDABLE), (9, "GENERIC_TEXT", GENERIC_TEXT),
      (10, "SUGGESTED_ADD_TO_EXISTING_BUCKET", SUGGESTED_ADD_TO_EXISTING_BUCKET), (11, "DISPLAY", DISPLAY),
      (12, "SUMMARY", SUMMARY), (13, "UPCOMING_SMANSFER", UPCOMING_SMANSFER), (14, "PENDING_SMANSFER", PENDING_SMANSFER),
      (15, "CANCELLED_SMANSFER", CANCELLED_SMANSFER), (16, "CLEARED_SMANSFER", CLEARED_SMANSFER)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.CardType") [] ["LevelMoney"] "CardType") ["LevelMoney", "CardType.hs"]
      [((-1), "UNKNOWN_CARD"), (1, "NORMIES"), (2, "TRANSFER"), (3, "BUCKETED_TRANSACTIONS"), (4, "SUGGESTED_TRANSACTION"),
       (7, "EXPLAINER"), (8, "ADJUST_SPENDABLE"), (9, "GENERIC_TEXT"), (10, "SUGGESTED_ADD_TO_EXISTING_BUCKET"), (11, "DISPLAY"),
       (12, "SUMMARY"), (13, "UPCOMING_SMANSFER"), (14, "PENDING_SMANSFER"), (15, "CANCELLED_SMANSFER"), (16, "CLEARED_SMANSFER")]

instance P'.TextType CardType where
  tellT = P'.tellShow
  getT = P'.getRead