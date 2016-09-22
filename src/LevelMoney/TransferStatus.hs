{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.TransferStatus (TransferStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data TransferStatus = UNKNOWN_STATUS
                    | UNKNOWN_FAILURE
                    | SCHEDULED
                    | PENDING
                    | CLEARED
                    | CANCELLED_DUE_TO_INSUFFICIENT_FUNDS
                    | CANCELLED_BY_USER
                    | CANCELLED_BY_LEVEL
                    | CANCELLED_BY_BANK
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                              Prelude'.Generic)

instance P'.Mergeable TransferStatus

instance Prelude'.Bounded TransferStatus where
  minBound = UNKNOWN_STATUS
  maxBound = CANCELLED_BY_BANK

instance P'.Default TransferStatus where
  defaultValue = UNKNOWN_STATUS

toMaybe'Enum :: Prelude'.Int -> P'.Maybe TransferStatus
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_STATUS
toMaybe'Enum 1 = Prelude'.Just UNKNOWN_FAILURE
toMaybe'Enum 2 = Prelude'.Just SCHEDULED
toMaybe'Enum 3 = Prelude'.Just PENDING
toMaybe'Enum 4 = Prelude'.Just CLEARED
toMaybe'Enum 5 = Prelude'.Just CANCELLED_DUE_TO_INSUFFICIENT_FUNDS
toMaybe'Enum 6 = Prelude'.Just CANCELLED_BY_USER
toMaybe'Enum 7 = Prelude'.Just CANCELLED_BY_LEVEL
toMaybe'Enum 8 = Prelude'.Just CANCELLED_BY_BANK
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum TransferStatus where
  fromEnum UNKNOWN_STATUS = 0
  fromEnum UNKNOWN_FAILURE = 1
  fromEnum SCHEDULED = 2
  fromEnum PENDING = 3
  fromEnum CLEARED = 4
  fromEnum CANCELLED_DUE_TO_INSUFFICIENT_FUNDS = 5
  fromEnum CANCELLED_BY_USER = 6
  fromEnum CANCELLED_BY_LEVEL = 7
  fromEnum CANCELLED_BY_BANK = 8
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.TransferStatus") . toMaybe'Enum
  succ UNKNOWN_STATUS = UNKNOWN_FAILURE
  succ UNKNOWN_FAILURE = SCHEDULED
  succ SCHEDULED = PENDING
  succ PENDING = CLEARED
  succ CLEARED = CANCELLED_DUE_TO_INSUFFICIENT_FUNDS
  succ CANCELLED_DUE_TO_INSUFFICIENT_FUNDS = CANCELLED_BY_USER
  succ CANCELLED_BY_USER = CANCELLED_BY_LEVEL
  succ CANCELLED_BY_LEVEL = CANCELLED_BY_BANK
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.TransferStatus"
  pred UNKNOWN_FAILURE = UNKNOWN_STATUS
  pred SCHEDULED = UNKNOWN_FAILURE
  pred PENDING = SCHEDULED
  pred CLEARED = PENDING
  pred CANCELLED_DUE_TO_INSUFFICIENT_FUNDS = CLEARED
  pred CANCELLED_BY_USER = CANCELLED_DUE_TO_INSUFFICIENT_FUNDS
  pred CANCELLED_BY_LEVEL = CANCELLED_BY_USER
  pred CANCELLED_BY_BANK = CANCELLED_BY_LEVEL
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.TransferStatus"

instance P'.Wire TransferStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB TransferStatus

instance P'.MessageAPI msg' (msg' -> TransferStatus) TransferStatus where
  getVal m' f' = f' m'

instance P'.ReflectEnum TransferStatus where
  reflectEnum
   = [(0, "UNKNOWN_STATUS", UNKNOWN_STATUS), (1, "UNKNOWN_FAILURE", UNKNOWN_FAILURE), (2, "SCHEDULED", SCHEDULED),
      (3, "PENDING", PENDING), (4, "CLEARED", CLEARED),
      (5, "CANCELLED_DUE_TO_INSUFFICIENT_FUNDS", CANCELLED_DUE_TO_INSUFFICIENT_FUNDS), (6, "CANCELLED_BY_USER", CANCELLED_BY_USER),
      (7, "CANCELLED_BY_LEVEL", CANCELLED_BY_LEVEL), (8, "CANCELLED_BY_BANK", CANCELLED_BY_BANK)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.TransferStatus") [] ["LevelMoney"] "TransferStatus")
      ["LevelMoney", "TransferStatus.hs"]
      [(0, "UNKNOWN_STATUS"), (1, "UNKNOWN_FAILURE"), (2, "SCHEDULED"), (3, "PENDING"), (4, "CLEARED"),
       (5, "CANCELLED_DUE_TO_INSUFFICIENT_FUNDS"), (6, "CANCELLED_BY_USER"), (7, "CANCELLED_BY_LEVEL"), (8, "CANCELLED_BY_BANK")]

instance P'.TextType TransferStatus where
  tellT = P'.tellShow
  getT = P'.getRead