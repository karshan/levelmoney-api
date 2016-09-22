{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.GetCacheContentsError (GetCacheContentsError(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data GetCacheContentsError = UNKNOWN_ERROR_GETCACHE
                           | NO_ERROR_GETCACHE
                           deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                     Prelude'.Generic)

instance P'.Mergeable GetCacheContentsError

instance Prelude'.Bounded GetCacheContentsError where
  minBound = UNKNOWN_ERROR_GETCACHE
  maxBound = NO_ERROR_GETCACHE

instance P'.Default GetCacheContentsError where
  defaultValue = UNKNOWN_ERROR_GETCACHE

toMaybe'Enum :: Prelude'.Int -> P'.Maybe GetCacheContentsError
toMaybe'Enum (-1) = Prelude'.Just UNKNOWN_ERROR_GETCACHE
toMaybe'Enum 0 = Prelude'.Just NO_ERROR_GETCACHE
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum GetCacheContentsError where
  fromEnum UNKNOWN_ERROR_GETCACHE = (-1)
  fromEnum NO_ERROR_GETCACHE = 0
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.GetCacheContentsError") . toMaybe'Enum
  succ UNKNOWN_ERROR_GETCACHE = NO_ERROR_GETCACHE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.GetCacheContentsError"
  pred NO_ERROR_GETCACHE = UNKNOWN_ERROR_GETCACHE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.GetCacheContentsError"

instance P'.Wire GetCacheContentsError where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB GetCacheContentsError

instance P'.MessageAPI msg' (msg' -> GetCacheContentsError) GetCacheContentsError where
  getVal m' f' = f' m'

instance P'.ReflectEnum GetCacheContentsError where
  reflectEnum = [((-1), "UNKNOWN_ERROR_GETCACHE", UNKNOWN_ERROR_GETCACHE), (0, "NO_ERROR_GETCACHE", NO_ERROR_GETCACHE)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.GetCacheContentsError") [] ["LevelMoney"] "GetCacheContentsError")
      ["LevelMoney", "GetCacheContentsError.hs"]
      [((-1), "UNKNOWN_ERROR_GETCACHE"), (0, "NO_ERROR_GETCACHE")]

instance P'.TextType GetCacheContentsError where
  tellT = P'.tellShow
  getT = P'.getRead