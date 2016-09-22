{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.FatLoginError (FatLoginError(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data FatLoginError = UNKNOWN_ERROR_FATLOGIN
                   | NO_ERROR_FATLOGIN
                   | SOME_ERROR
                   | NO_DEMO_ACCOUNTS
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable FatLoginError

instance Prelude'.Bounded FatLoginError where
  minBound = UNKNOWN_ERROR_FATLOGIN
  maxBound = NO_DEMO_ACCOUNTS

instance P'.Default FatLoginError where
  defaultValue = UNKNOWN_ERROR_FATLOGIN

toMaybe'Enum :: Prelude'.Int -> P'.Maybe FatLoginError
toMaybe'Enum (-1) = Prelude'.Just UNKNOWN_ERROR_FATLOGIN
toMaybe'Enum 0 = Prelude'.Just NO_ERROR_FATLOGIN
toMaybe'Enum 1 = Prelude'.Just SOME_ERROR
toMaybe'Enum 2 = Prelude'.Just NO_DEMO_ACCOUNTS
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum FatLoginError where
  fromEnum UNKNOWN_ERROR_FATLOGIN = (-1)
  fromEnum NO_ERROR_FATLOGIN = 0
  fromEnum SOME_ERROR = 1
  fromEnum NO_DEMO_ACCOUNTS = 2
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.FatLoginError") . toMaybe'Enum
  succ UNKNOWN_ERROR_FATLOGIN = NO_ERROR_FATLOGIN
  succ NO_ERROR_FATLOGIN = SOME_ERROR
  succ SOME_ERROR = NO_DEMO_ACCOUNTS
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.FatLoginError"
  pred NO_ERROR_FATLOGIN = UNKNOWN_ERROR_FATLOGIN
  pred SOME_ERROR = NO_ERROR_FATLOGIN
  pred NO_DEMO_ACCOUNTS = SOME_ERROR
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.FatLoginError"

instance P'.Wire FatLoginError where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB FatLoginError

instance P'.MessageAPI msg' (msg' -> FatLoginError) FatLoginError where
  getVal m' f' = f' m'

instance P'.ReflectEnum FatLoginError where
  reflectEnum
   = [((-1), "UNKNOWN_ERROR_FATLOGIN", UNKNOWN_ERROR_FATLOGIN), (0, "NO_ERROR_FATLOGIN", NO_ERROR_FATLOGIN),
      (1, "SOME_ERROR", SOME_ERROR), (2, "NO_DEMO_ACCOUNTS", NO_DEMO_ACCOUNTS)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.FatLoginError") [] ["LevelMoney"] "FatLoginError")
      ["LevelMoney", "FatLoginError.hs"]
      [((-1), "UNKNOWN_ERROR_FATLOGIN"), (0, "NO_ERROR_FATLOGIN"), (1, "SOME_ERROR"), (2, "NO_DEMO_ACCOUNTS")]

instance P'.TextType FatLoginError where
  tellT = P'.tellShow
  getT = P'.getRead