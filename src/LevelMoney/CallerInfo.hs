{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.CallerInfo (CallerInfo(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.UserAgent as LevelMoney (UserAgent)

data CallerInfo = CallerInfo{os_version_string :: !(P'.Maybe P'.Utf8), user_agent :: !(P'.Maybe LevelMoney.UserAgent),
                             version :: !(P'.Maybe P'.Int64), version_string :: !(P'.Maybe P'.Utf8),
                             unknown'field :: !(P'.UnknownField)}
                deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage CallerInfo where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable CallerInfo where
  mergeAppend (CallerInfo x'1 x'2 x'3 x'4 x'5) (CallerInfo y'1 y'2 y'3 y'4 y'5)
   = CallerInfo (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)

instance P'.Default CallerInfo where
  defaultValue = CallerInfo P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire CallerInfo where
  wireSize ft' self'@(CallerInfo x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeUnknownField x'5)
  wirePut ft' self'@(CallerInfo x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'2
             P'.wirePutOpt 16 3 x'3
             P'.wirePutOpt 26 9 x'4
             P'.wirePutOpt 34 9 x'1
             P'.wirePutUnknownField x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{os_version_string = Prelude'.Just new'Field}) (P'.wireGet 9)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{user_agent = Prelude'.Just new'Field}) (P'.wireGet 14)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{version = Prelude'.Just new'Field}) (P'.wireGet 3)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{version_string = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CallerInfo) CallerInfo where
  getVal m' f' = f' m'

instance P'.GPB CallerInfo

instance P'.ReflectDescriptor CallerInfo where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.CallerInfo\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CallerInfo\"}, descFilePath = [\"LevelMoney\",\"CallerInfo.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CallerInfo.os_version_string\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CallerInfo\"], baseName' = FName \"os_version_string\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CallerInfo.user_agent\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CallerInfo\"], baseName' = FName \"user_agent\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.UserAgent\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"UserAgent\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CallerInfo.version\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CallerInfo\"], baseName' = FName \"version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CallerInfo.version_string\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CallerInfo\"], baseName' = FName \"version_string\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType CallerInfo where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CallerInfo where
  textPut msg
   = do
       P'.tellT "os_version_string" (os_version_string msg)
       P'.tellT "user_agent" (user_agent msg)
       P'.tellT "version" (version msg)
       P'.tellT "version_string" (version_string msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'os_version_string, parse'user_agent, parse'version, parse'version_string]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'os_version_string
         = P'.try
            (do
               v <- P'.getT "os_version_string"
               Prelude'.return (\ o -> o{os_version_string = v}))
        parse'user_agent
         = P'.try
            (do
               v <- P'.getT "user_agent"
               Prelude'.return (\ o -> o{user_agent = v}))
        parse'version
         = P'.try
            (do
               v <- P'.getT "version"
               Prelude'.return (\ o -> o{version = v}))
        parse'version_string
         = P'.try
            (do
               v <- P'.getT "version_string"
               Prelude'.return (\ o -> o{version_string = v}))