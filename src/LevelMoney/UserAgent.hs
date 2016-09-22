{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.UserAgent (UserAgent(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data UserAgent = UNSPECIFIED
               | IPHONE
               | ANDROID
               | WEB
               | CONSOLE
               | GOOGLE_GLASS
               | ANDROID_WEAR
               | IWATCH
               | SKYNET
               | TOASTER
               | BLACKBERRY
               | WINDOWS_PHONE
               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                         Prelude'.Generic)

instance P'.Mergeable UserAgent

instance Prelude'.Bounded UserAgent where
  minBound = UNSPECIFIED
  maxBound = WINDOWS_PHONE

instance P'.Default UserAgent where
  defaultValue = UNSPECIFIED

toMaybe'Enum :: Prelude'.Int -> P'.Maybe UserAgent
toMaybe'Enum 1 = Prelude'.Just UNSPECIFIED
toMaybe'Enum 2 = Prelude'.Just IPHONE
toMaybe'Enum 3 = Prelude'.Just ANDROID
toMaybe'Enum 4 = Prelude'.Just WEB
toMaybe'Enum 5 = Prelude'.Just CONSOLE
toMaybe'Enum 6 = Prelude'.Just GOOGLE_GLASS
toMaybe'Enum 7 = Prelude'.Just ANDROID_WEAR
toMaybe'Enum 8 = Prelude'.Just IWATCH
toMaybe'Enum 9 = Prelude'.Just SKYNET
toMaybe'Enum 10 = Prelude'.Just TOASTER
toMaybe'Enum 11 = Prelude'.Just BLACKBERRY
toMaybe'Enum 12 = Prelude'.Just WINDOWS_PHONE
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum UserAgent where
  fromEnum UNSPECIFIED = 1
  fromEnum IPHONE = 2
  fromEnum ANDROID = 3
  fromEnum WEB = 4
  fromEnum CONSOLE = 5
  fromEnum GOOGLE_GLASS = 6
  fromEnum ANDROID_WEAR = 7
  fromEnum IWATCH = 8
  fromEnum SKYNET = 9
  fromEnum TOASTER = 10
  fromEnum BLACKBERRY = 11
  fromEnum WINDOWS_PHONE = 12
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type LevelMoney.UserAgent") . toMaybe'Enum
  succ UNSPECIFIED = IPHONE
  succ IPHONE = ANDROID
  succ ANDROID = WEB
  succ WEB = CONSOLE
  succ CONSOLE = GOOGLE_GLASS
  succ GOOGLE_GLASS = ANDROID_WEAR
  succ ANDROID_WEAR = IWATCH
  succ IWATCH = SKYNET
  succ SKYNET = TOASTER
  succ TOASTER = BLACKBERRY
  succ BLACKBERRY = WINDOWS_PHONE
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type LevelMoney.UserAgent"
  pred IPHONE = UNSPECIFIED
  pred ANDROID = IPHONE
  pred WEB = ANDROID
  pred CONSOLE = WEB
  pred GOOGLE_GLASS = CONSOLE
  pred ANDROID_WEAR = GOOGLE_GLASS
  pred IWATCH = ANDROID_WEAR
  pred SKYNET = IWATCH
  pred TOASTER = SKYNET
  pred BLACKBERRY = TOASTER
  pred WINDOWS_PHONE = BLACKBERRY
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type LevelMoney.UserAgent"

instance P'.Wire UserAgent where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB UserAgent

instance P'.MessageAPI msg' (msg' -> UserAgent) UserAgent where
  getVal m' f' = f' m'

instance P'.ReflectEnum UserAgent where
  reflectEnum
   = [(1, "UNSPECIFIED", UNSPECIFIED), (2, "IPHONE", IPHONE), (3, "ANDROID", ANDROID), (4, "WEB", WEB), (5, "CONSOLE", CONSOLE),
      (6, "GOOGLE_GLASS", GOOGLE_GLASS), (7, "ANDROID_WEAR", ANDROID_WEAR), (8, "IWATCH", IWATCH), (9, "SKYNET", SKYNET),
      (10, "TOASTER", TOASTER), (11, "BLACKBERRY", BLACKBERRY), (12, "WINDOWS_PHONE", WINDOWS_PHONE)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".LevelMoney.UserAgent") [] ["LevelMoney"] "UserAgent") ["LevelMoney", "UserAgent.hs"]
      [(1, "UNSPECIFIED"), (2, "IPHONE"), (3, "ANDROID"), (4, "WEB"), (5, "CONSOLE"), (6, "GOOGLE_GLASS"), (7, "ANDROID_WEAR"),
       (8, "IWATCH"), (9, "SKYNET"), (10, "TOASTER"), (11, "BLACKBERRY"), (12, "WINDOWS_PHONE")]

instance P'.TextType UserAgent where
  tellT = P'.tellShow
  getT = P'.getRead