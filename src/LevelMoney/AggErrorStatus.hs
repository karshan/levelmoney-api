{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.AggErrorStatus (AggErrorStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data AggErrorStatus = UNKNOWN_AGG
                    | NO_ERROR_AGG
                    | UNHEALTHY
                    | I_SENSE_A_DISTURBANCE
                    | CLOSED
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                              Prelude'.Generic)

instance P'.Mergeable AggErrorStatus

instance Prelude'.Bounded AggErrorStatus where
  minBound = UNKNOWN_AGG
  maxBound = CLOSED

instance P'.Default AggErrorStatus where
  defaultValue = UNKNOWN_AGG

toMaybe'Enum :: Prelude'.Int -> P'.Maybe AggErrorStatus
toMaybe'Enum 0 = Prelude'.Just UNKNOWN_AGG
toMaybe'Enum 1 = Prelude'.Just NO_ERROR_AGG
toMaybe'Enum 2 = Prelude'.Just UNHEALTHY
toMaybe'Enum 3 = Prelude'.Just I_SENSE_A_DISTURBANCE
toMaybe'Enum 4 = Prelude'.Just CLOSED
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum AggErrorStatus where
  fromEnum UNKNOWN_AGG = 0
  fromEnum NO_ERROR_AGG = 1
  fromEnum UNHEALTHY = 2
  fromEnum I_SENSE_A_DISTURBANCE = 3
  fromEnum CLOSED = 4
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.AggErrorStatus") . toMaybe'Enum
  succ UNKNOWN_AGG = NO_ERROR_AGG
  succ NO_ERROR_AGG = UNHEALTHY
  succ UNHEALTHY = I_SENSE_A_DISTURBANCE
  succ I_SENSE_A_DISTURBANCE = CLOSED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.AggErrorStatus"
  pred NO_ERROR_AGG = UNKNOWN_AGG
  pred UNHEALTHY = NO_ERROR_AGG
  pred I_SENSE_A_DISTURBANCE = UNHEALTHY
  pred CLOSED = I_SENSE_A_DISTURBANCE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.AggErrorStatus"

instance P'.Wire AggErrorStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB AggErrorStatus

instance P'.MessageAPI msg' (msg' -> AggErrorStatus) AggErrorStatus where
  getVal m' f' = f' m'

instance P'.ReflectEnum AggErrorStatus where
  reflectEnum
   = [(0, "UNKNOWN_AGG", UNKNOWN_AGG), (1, "NO_ERROR_AGG", NO_ERROR_AGG), (2, "UNHEALTHY", UNHEALTHY),
      (3, "I_SENSE_A_DISTURBANCE", I_SENSE_A_DISTURBANCE), (4, "CLOSED", CLOSED)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.AggErrorStatus") [] ["LevelMoney"] "AggErrorStatus")
      ["LevelMoney", "AggErrorStatus.hs"]
      [(0, "UNKNOWN_AGG"), (1, "NO_ERROR_AGG"), (2, "UNHEALTHY"), (3, "I_SENSE_A_DISTURBANCE"), (4, "CLOSED")]

instance P'.TextType AggErrorStatus where
  tellT = P'.tellShow
  getT = P'.getRead