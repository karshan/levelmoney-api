{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.Args (Args(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.CallerInfo as LevelMoney (CallerInfo)

data Args = Args{api_token :: !(P'.Maybe P'.Utf8), caller_info :: !(P'.Maybe LevelMoney.CallerInfo),
                 demo_mode :: !(P'.Maybe P'.Bool), device_id :: !(P'.Maybe P'.Utf8), json_args :: !(P'.Maybe P'.Utf8),
                 json_strict_mode :: !(P'.Maybe P'.Bool), json_verbose_response :: !(P'.Maybe P'.Bool),
                 masquerade_as :: !(P'.Maybe P'.Int64), time :: !(P'.Maybe P'.Int64), time_zone :: !(P'.Maybe P'.Float),
                 time_zone_string :: !(P'.Maybe P'.Utf8), token :: !(P'.Maybe P'.Utf8), uid :: !(P'.Maybe P'.Int64),
                 user_has_pin :: !(P'.Maybe P'.Bool), unknown'field :: !(P'.UnknownField)}
          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage Args where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable Args where
  mergeAppend (Args x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   (Args y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15)
   = Args (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)

instance P'.Default Args where
  defaultValue
   = Args P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire Args where
  wireSize ft' self'@(Args x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 8 x'6
             + P'.wireSizeOpt 2 8 x'7
             + P'.wireSizeOpt 1 3 x'8
             + P'.wireSizeOpt 1 3 x'9
             + P'.wireSizeOpt 1 2 x'10
             + P'.wireSizeOpt 1 9 x'11
             + P'.wireSizeOpt 1 9 x'12
             + P'.wireSizeOpt 1 3 x'13
             + P'.wireSizeOpt 1 8 x'14
             + P'.wireSizeUnknownField x'15)
  wirePut ft' self'@(Args x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 3 x'13
             P'.wirePutOpt 18 9 x'12
             P'.wirePutOpt 32 8 x'3
             P'.wirePutOpt 40 8 x'14
             P'.wirePutOpt 56 3 x'8
             P'.wirePutOpt 66 9 x'5
             P'.wirePutOpt 74 11 x'2
             P'.wirePutOpt 85 2 x'10
             P'.wirePutOpt 90 9 x'11
             P'.wirePutOpt 98 9 x'1
             P'.wirePutOpt 104 3 x'9
             P'.wirePutOpt 112 8 x'6
             P'.wirePutOpt 122 9 x'4
             P'.wirePutOpt 128 8 x'7
             P'.wirePutUnknownField x'15
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             98 -> Prelude'.fmap (\ !new'Field -> old'Self{api_token = Prelude'.Just new'Field}) (P'.wireGet 9)
             74 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{caller_info = P'.mergeAppend (caller_info old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{demo_mode = Prelude'.Just new'Field}) (P'.wireGet 8)
             122 -> Prelude'.fmap (\ !new'Field -> old'Self{device_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{json_args = Prelude'.Just new'Field}) (P'.wireGet 9)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{json_strict_mode = Prelude'.Just new'Field}) (P'.wireGet 8)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{json_verbose_response = Prelude'.Just new'Field}) (P'.wireGet 8)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{masquerade_as = Prelude'.Just new'Field}) (P'.wireGet 3)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{time = Prelude'.Just new'Field}) (P'.wireGet 3)
             85 -> Prelude'.fmap (\ !new'Field -> old'Self{time_zone = Prelude'.Just new'Field}) (P'.wireGet 2)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{time_zone_string = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{token = Prelude'.Just new'Field}) (P'.wireGet 9)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{uid = Prelude'.Just new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{user_has_pin = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Args) Args where
  getVal m' f' = f' m'

instance P'.GPB Args

instance P'.ReflectDescriptor Args where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [8, 18, 32, 40, 56, 66, 74, 85, 90, 98, 104, 112, 122, 128])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.Args\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Args\"}, descFilePath = [\"LevelMoney\",\"Args.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.api_token\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"api_token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.caller_info\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"caller_info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.CallerInfo\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CallerInfo\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.demo_mode\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"demo_mode\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.device_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"device_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.json_args\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"json_args\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.json_strict_mode\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"json_strict_mode\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.json_verbose_response\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"json_verbose_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.masquerade_as\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"masquerade_as\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.time\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.time_zone\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"time_zone\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 85}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 2}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.time_zone_string\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"time_zone_string\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.token\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.uid\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"uid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Args.user_has_pin\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Args\"], baseName' = FName \"user_has_pin\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType Args where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Args where
  textPut msg
   = do
       P'.tellT "api_token" (api_token msg)
       P'.tellT "caller_info" (caller_info msg)
       P'.tellT "demo_mode" (demo_mode msg)
       P'.tellT "device_id" (device_id msg)
       P'.tellT "json_args" (json_args msg)
       P'.tellT "json_strict_mode" (json_strict_mode msg)
       P'.tellT "json_verbose_response" (json_verbose_response msg)
       P'.tellT "masquerade_as" (masquerade_as msg)
       P'.tellT "time" (time msg)
       P'.tellT "time_zone" (time_zone msg)
       P'.tellT "time_zone_string" (time_zone_string msg)
       P'.tellT "token" (token msg)
       P'.tellT "uid" (uid msg)
       P'.tellT "user_has_pin" (user_has_pin msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'api_token, parse'caller_info, parse'demo_mode, parse'device_id, parse'json_args, parse'json_strict_mode,
                   parse'json_verbose_response, parse'masquerade_as, parse'time, parse'time_zone, parse'time_zone_string,
                   parse'token, parse'uid, parse'user_has_pin])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'api_token
         = P'.try
            (do
               v <- P'.getT "api_token"
               Prelude'.return (\ o -> o{api_token = v}))
        parse'caller_info
         = P'.try
            (do
               v <- P'.getT "caller_info"
               Prelude'.return (\ o -> o{caller_info = v}))
        parse'demo_mode
         = P'.try
            (do
               v <- P'.getT "demo_mode"
               Prelude'.return (\ o -> o{demo_mode = v}))
        parse'device_id
         = P'.try
            (do
               v <- P'.getT "device_id"
               Prelude'.return (\ o -> o{device_id = v}))
        parse'json_args
         = P'.try
            (do
               v <- P'.getT "json_args"
               Prelude'.return (\ o -> o{json_args = v}))
        parse'json_strict_mode
         = P'.try
            (do
               v <- P'.getT "json_strict_mode"
               Prelude'.return (\ o -> o{json_strict_mode = v}))
        parse'json_verbose_response
         = P'.try
            (do
               v <- P'.getT "json_verbose_response"
               Prelude'.return (\ o -> o{json_verbose_response = v}))
        parse'masquerade_as
         = P'.try
            (do
               v <- P'.getT "masquerade_as"
               Prelude'.return (\ o -> o{masquerade_as = v}))
        parse'time
         = P'.try
            (do
               v <- P'.getT "time"
               Prelude'.return (\ o -> o{time = v}))
        parse'time_zone
         = P'.try
            (do
               v <- P'.getT "time_zone"
               Prelude'.return (\ o -> o{time_zone = v}))
        parse'time_zone_string
         = P'.try
            (do
               v <- P'.getT "time_zone_string"
               Prelude'.return (\ o -> o{time_zone_string = v}))
        parse'token
         = P'.try
            (do
               v <- P'.getT "token"
               Prelude'.return (\ o -> o{token = v}))
        parse'uid
         = P'.try
            (do
               v <- P'.getT "uid"
               Prelude'.return (\ o -> o{uid = v}))
        parse'user_has_pin
         = P'.try
            (do
               v <- P'.getT "user_has_pin"
               Prelude'.return (\ o -> o{user_has_pin = v}))