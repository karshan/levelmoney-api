{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.AutosaveStatus (AutosaveStatus(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data AutosaveStatus = NOT_SET_UP
                    | ACTIVE
                    | PAUSED
                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                              Prelude'.Generic)

instance P'.Mergeable AutosaveStatus

instance Prelude'.Bounded AutosaveStatus where
  minBound = NOT_SET_UP
  maxBound = PAUSED

instance P'.Default AutosaveStatus where
  defaultValue = NOT_SET_UP

toMaybe'Enum :: Prelude'.Int -> P'.Maybe AutosaveStatus
toMaybe'Enum 0 = Prelude'.Just NOT_SET_UP
toMaybe'Enum 1 = Prelude'.Just ACTIVE
toMaybe'Enum 2 = Prelude'.Just PAUSED
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum AutosaveStatus where
  fromEnum NOT_SET_UP = 0
  fromEnum ACTIVE = 1
  fromEnum PAUSED = 2
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.AutosaveStatus") . toMaybe'Enum
  succ NOT_SET_UP = ACTIVE
  succ ACTIVE = PAUSED
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.AutosaveStatus"
  pred ACTIVE = NOT_SET_UP
  pred PAUSED = ACTIVE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.AutosaveStatus"

instance P'.Wire AutosaveStatus where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB AutosaveStatus

instance P'.MessageAPI msg' (msg' -> AutosaveStatus) AutosaveStatus where
  getVal m' f' = f' m'

instance P'.ReflectEnum AutosaveStatus where
  reflectEnum = [(0, "NOT_SET_UP", NOT_SET_UP), (1, "ACTIVE", ACTIVE), (2, "PAUSED", PAUSED)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.AutosaveStatus") [] ["LevelMoney"] "AutosaveStatus")
      ["LevelMoney", "AutosaveStatus.hs"]
      [(0, "NOT_SET_UP"), (1, "ACTIVE"), (2, "PAUSED")]

instance P'.TextType AutosaveStatus where
  tellT = P'.tellShow
  getT = P'.getRead