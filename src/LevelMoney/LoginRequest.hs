{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.LoginRequest (LoginRequest(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.Args as LevelMoney (Args)

data LoginRequest = LoginRequest{args :: !(P'.Maybe LevelMoney.Args), card_version :: !(P'.Maybe P'.Int32),
                                 device_id :: !(P'.Maybe P'.Utf8), email :: !(P'.Maybe P'.Utf8), password :: !(P'.Maybe P'.Utf8),
                                 unknown'field :: !(P'.UnknownField)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage LoginRequest where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable LoginRequest where
  mergeAppend (LoginRequest x'1 x'2 x'3 x'4 x'5 x'6) (LoginRequest y'1 y'2 y'3 y'4 y'5 y'6)
   = LoginRequest (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)

instance P'.Default LoginRequest where
  defaultValue = LoginRequest P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire LoginRequest where
  wireSize ft' self'@(LoginRequest x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeUnknownField x'6)
  wirePut ft' self'@(LoginRequest x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'4
             P'.wirePutOpt 18 9 x'5
             P'.wirePutOpt 26 11 x'1
             P'.wirePutOpt 34 9 x'3
             P'.wirePutOpt 96 5 x'2
             P'.wirePutUnknownField x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{args = P'.mergeAppend (args old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{card_version = Prelude'.Just new'Field}) (P'.wireGet 5)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{device_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{email = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{password = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> LoginRequest) LoginRequest where
  getVal m' f' = f' m'

instance P'.GPB LoginRequest

instance P'.ReflectDescriptor LoginRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 96])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.LoginRequest\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"LoginRequest\"}, descFilePath = [\"LevelMoney\",\"LoginRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.LoginRequest.args\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"LoginRequest\"], baseName' = FName \"args\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Args\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Args\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.LoginRequest.card_version\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"LoginRequest\"], baseName' = FName \"card_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.LoginRequest.device_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"LoginRequest\"], baseName' = FName \"device_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.LoginRequest.email\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"LoginRequest\"], baseName' = FName \"email\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.LoginRequest.password\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"LoginRequest\"], baseName' = FName \"password\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType LoginRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg LoginRequest where
  textPut msg
   = do
       P'.tellT "args" (args msg)
       P'.tellT "card_version" (card_version msg)
       P'.tellT "device_id" (device_id msg)
       P'.tellT "email" (email msg)
       P'.tellT "password" (password msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'args, parse'card_version, parse'device_id, parse'email, parse'password]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'args
         = P'.try
            (do
               v <- P'.getT "args"
               Prelude'.return (\ o -> o{args = v}))
        parse'card_version
         = P'.try
            (do
               v <- P'.getT "card_version"
               Prelude'.return (\ o -> o{card_version = v}))
        parse'device_id
         = P'.try
            (do
               v <- P'.getT "device_id"
               Prelude'.return (\ o -> o{device_id = v}))
        parse'email
         = P'.try
            (do
               v <- P'.getT "email"
               Prelude'.return (\ o -> o{email = v}))
        parse'password
         = P'.try
            (do
               v <- P'.getT "password"
               Prelude'.return (\ o -> o{password = v}))