{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.Events (Events(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Events = Events{sensitive_token_expiration_time :: !(P'.Maybe P'.Int64),
                     insensitive_token_expiration_time :: !(P'.Maybe P'.Int64), needs_reauth :: !(P'.Maybe P'.Bool),
                     popup_message :: !(P'.Maybe P'.Utf8), error_description :: !(P'.Maybe P'.Utf8),
                     invalidate_all_caches :: !(P'.Maybe P'.Bool), invalidate_everything_and_log_out :: !(P'.Maybe P'.Bool),
                     unknown'field :: !(P'.UnknownField)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage Events where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable Events where
  mergeAppend (Events x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (Events y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = Events (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)

instance P'.Default Events where
  defaultValue
   = Events P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue

instance P'.Wire Events where
  wireSize ft' self'@(Events x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 3 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 2 8 x'6
             + P'.wireSizeOpt 2 8 x'7
             + P'.wireSizeUnknownField x'8)
  wirePut ft' self'@(Events x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 3 x'1
             P'.wirePutOpt 16 3 x'2
             P'.wirePutOpt 24 8 x'3
             P'.wirePutOpt 74 9 x'4
             P'.wirePutOpt 82 9 x'5
             P'.wirePutOpt 800 8 x'6
             P'.wirePutOpt 808 8 x'7
             P'.wirePutUnknownField x'8
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{sensitive_token_expiration_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{insensitive_token_expiration_time = Prelude'.Just new'Field})
                    (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{needs_reauth = Prelude'.Just new'Field}) (P'.wireGet 8)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{popup_message = Prelude'.Just new'Field}) (P'.wireGet 9)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{error_description = Prelude'.Just new'Field}) (P'.wireGet 9)
             800 -> Prelude'.fmap (\ !new'Field -> old'Self{invalidate_all_caches = Prelude'.Just new'Field}) (P'.wireGet 8)
             808 -> Prelude'.fmap (\ !new'Field -> old'Self{invalidate_everything_and_log_out = Prelude'.Just new'Field})
                     (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Events) Events where
  getVal m' f' = f' m'

instance P'.GPB Events

instance P'.ReflectDescriptor Events where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 74, 82, 800, 808])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.Events\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Events\"}, descFilePath = [\"LevelMoney\",\"Events.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Events.sensitive_token_expiration_time\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Events\"], baseName' = FName \"sensitive_token_expiration_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Events.insensitive_token_expiration_time\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Events\"], baseName' = FName \"insensitive_token_expiration_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Events.needs_reauth\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Events\"], baseName' = FName \"needs_reauth\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Events.popup_message\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Events\"], baseName' = FName \"popup_message\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Events.error_description\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Events\"], baseName' = FName \"error_description\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Events.invalidate_all_caches\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Events\"], baseName' = FName \"invalidate_all_caches\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 100}, wireTag = WireTag {getWireTag = 800}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Events.invalidate_everything_and_log_out\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Events\"], baseName' = FName \"invalidate_everything_and_log_out\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 101}, wireTag = WireTag {getWireTag = 808}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType Events where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Events where
  textPut msg
   = do
       P'.tellT "sensitive_token_expiration_time" (sensitive_token_expiration_time msg)
       P'.tellT "insensitive_token_expiration_time" (insensitive_token_expiration_time msg)
       P'.tellT "needs_reauth" (needs_reauth msg)
       P'.tellT "popup_message" (popup_message msg)
       P'.tellT "error_description" (error_description msg)
       P'.tellT "invalidate_all_caches" (invalidate_all_caches msg)
       P'.tellT "invalidate_everything_and_log_out" (invalidate_everything_and_log_out msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'sensitive_token_expiration_time, parse'insensitive_token_expiration_time, parse'needs_reauth,
                   parse'popup_message, parse'error_description, parse'invalidate_all_caches,
                   parse'invalidate_everything_and_log_out])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'sensitive_token_expiration_time
         = P'.try
            (do
               v <- P'.getT "sensitive_token_expiration_time"
               Prelude'.return (\ o -> o{sensitive_token_expiration_time = v}))
        parse'insensitive_token_expiration_time
         = P'.try
            (do
               v <- P'.getT "insensitive_token_expiration_time"
               Prelude'.return (\ o -> o{insensitive_token_expiration_time = v}))
        parse'needs_reauth
         = P'.try
            (do
               v <- P'.getT "needs_reauth"
               Prelude'.return (\ o -> o{needs_reauth = v}))
        parse'popup_message
         = P'.try
            (do
               v <- P'.getT "popup_message"
               Prelude'.return (\ o -> o{popup_message = v}))
        parse'error_description
         = P'.try
            (do
               v <- P'.getT "error_description"
               Prelude'.return (\ o -> o{error_description = v}))
        parse'invalidate_all_caches
         = P'.try
            (do
               v <- P'.getT "invalidate_all_caches"
               Prelude'.return (\ o -> o{invalidate_all_caches = v}))
        parse'invalidate_everything_and_log_out
         = P'.try
            (do
               v <- P'.getT "invalidate_everything_and_log_out"
               Prelude'.return (\ o -> o{invalidate_everything_and_log_out = v}))