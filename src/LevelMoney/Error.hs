{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.Error (Error(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Error = UNKNOWN_ERROR
           | NO_ERROR
           | NO_TOKEN
           | TOKEN_EXPIRED
           | INSUFFICIENT_TOKEN_SENSITIVITY
           | NO_API_TOKEN
           | BAD_API_TOKEN
           | ILLEGAL_PATH
           | REQUEST_SCHEMA_MISMATCH
           | STRICT_MODE_FAILURE
           | LOCK_FAILURE
           | NOT_IMPLEMENTED_YET
           deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Error

instance Prelude'.Bounded Error where
  minBound = UNKNOWN_ERROR
  maxBound = NOT_IMPLEMENTED_YET

instance P'.Default Error where
  defaultValue = UNKNOWN_ERROR

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Error
toMaybe'Enum (-1) = Prelude'.Just UNKNOWN_ERROR
toMaybe'Enum 0 = Prelude'.Just NO_ERROR
toMaybe'Enum 300 = Prelude'.Just NO_TOKEN
toMaybe'Enum 301 = Prelude'.Just TOKEN_EXPIRED
toMaybe'Enum 302 = Prelude'.Just INSUFFICIENT_TOKEN_SENSITIVITY
toMaybe'Enum 303 = Prelude'.Just NO_API_TOKEN
toMaybe'Enum 304 = Prelude'.Just BAD_API_TOKEN
toMaybe'Enum 305 = Prelude'.Just ILLEGAL_PATH
toMaybe'Enum 306 = Prelude'.Just REQUEST_SCHEMA_MISMATCH
toMaybe'Enum 307 = Prelude'.Just STRICT_MODE_FAILURE
toMaybe'Enum 500 = Prelude'.Just LOCK_FAILURE
toMaybe'Enum 700 = Prelude'.Just NOT_IMPLEMENTED_YET
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Error where
  fromEnum UNKNOWN_ERROR = (-1)
  fromEnum NO_ERROR = 0
  fromEnum NO_TOKEN = 300
  fromEnum TOKEN_EXPIRED = 301
  fromEnum INSUFFICIENT_TOKEN_SENSITIVITY = 302
  fromEnum NO_API_TOKEN = 303
  fromEnum BAD_API_TOKEN = 304
  fromEnum ILLEGAL_PATH = 305
  fromEnum REQUEST_SCHEMA_MISMATCH = 306
  fromEnum STRICT_MODE_FAILURE = 307
  fromEnum LOCK_FAILURE = 500
  fromEnum NOT_IMPLEMENTED_YET = 700
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.Error") . toMaybe'Enum
  succ UNKNOWN_ERROR = NO_ERROR
  succ NO_ERROR = NO_TOKEN
  succ NO_TOKEN = TOKEN_EXPIRED
  succ TOKEN_EXPIRED = INSUFFICIENT_TOKEN_SENSITIVITY
  succ INSUFFICIENT_TOKEN_SENSITIVITY = NO_API_TOKEN
  succ NO_API_TOKEN = BAD_API_TOKEN
  succ BAD_API_TOKEN = ILLEGAL_PATH
  succ ILLEGAL_PATH = REQUEST_SCHEMA_MISMATCH
  succ REQUEST_SCHEMA_MISMATCH = STRICT_MODE_FAILURE
  succ STRICT_MODE_FAILURE = LOCK_FAILURE
  succ LOCK_FAILURE = NOT_IMPLEMENTED_YET
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.Error"
  pred NO_ERROR = UNKNOWN_ERROR
  pred NO_TOKEN = NO_ERROR
  pred TOKEN_EXPIRED = NO_TOKEN
  pred INSUFFICIENT_TOKEN_SENSITIVITY = TOKEN_EXPIRED
  pred NO_API_TOKEN = INSUFFICIENT_TOKEN_SENSITIVITY
  pred BAD_API_TOKEN = NO_API_TOKEN
  pred ILLEGAL_PATH = BAD_API_TOKEN
  pred REQUEST_SCHEMA_MISMATCH = ILLEGAL_PATH
  pred STRICT_MODE_FAILURE = REQUEST_SCHEMA_MISMATCH
  pred LOCK_FAILURE = STRICT_MODE_FAILURE
  pred NOT_IMPLEMENTED_YET = LOCK_FAILURE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.Error"

instance P'.Wire Error where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Error

instance P'.MessageAPI msg' (msg' -> Error) Error where
  getVal m' f' = f' m'

instance P'.ReflectEnum Error where
  reflectEnum
   = [((-1), "UNKNOWN_ERROR", UNKNOWN_ERROR), (0, "NO_ERROR", NO_ERROR), (300, "NO_TOKEN", NO_TOKEN),
      (301, "TOKEN_EXPIRED", TOKEN_EXPIRED), (302, "INSUFFICIENT_TOKEN_SENSITIVITY", INSUFFICIENT_TOKEN_SENSITIVITY),
      (303, "NO_API_TOKEN", NO_API_TOKEN), (304, "BAD_API_TOKEN", BAD_API_TOKEN), (305, "ILLEGAL_PATH", ILLEGAL_PATH),
      (306, "REQUEST_SCHEMA_MISMATCH", REQUEST_SCHEMA_MISMATCH), (307, "STRICT_MODE_FAILURE", STRICT_MODE_FAILURE),
      (500, "LOCK_FAILURE", LOCK_FAILURE), (700, "NOT_IMPLEMENTED_YET", NOT_IMPLEMENTED_YET)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.Error") [] ["LevelMoney"] "Error") ["LevelMoney", "Error.hs"]
      [((-1), "UNKNOWN_ERROR"), (0, "NO_ERROR"), (300, "NO_TOKEN"), (301, "TOKEN_EXPIRED"), (302, "INSUFFICIENT_TOKEN_SENSITIVITY"),
       (303, "NO_API_TOKEN"), (304, "BAD_API_TOKEN"), (305, "ILLEGAL_PATH"), (306, "REQUEST_SCHEMA_MISMATCH"),
       (307, "STRICT_MODE_FAILURE"), (500, "LOCK_FAILURE"), (700, "NOT_IMPLEMENTED_YET")]

instance P'.TextType Error where
  tellT = P'.tellShow
  getT = P'.getRead