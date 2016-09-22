{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.GenericTextCard (GenericTextCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data GenericTextCard = GenericTextCard{call_to_action_text :: !(P'.Maybe P'.Utf8), call_to_action_url :: !(P'.Maybe P'.Utf8),
                                       copy :: !(P'.Maybe P'.Utf8), header :: !(P'.Maybe P'.Utf8),
                                       unknown'field :: !(P'.UnknownField)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage GenericTextCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable GenericTextCard where
  mergeAppend (GenericTextCard x'1 x'2 x'3 x'4 x'5) (GenericTextCard y'1 y'2 y'3 y'4 y'5)
   = GenericTextCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)

instance P'.Default GenericTextCard where
  defaultValue = GenericTextCard P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire GenericTextCard where
  wireSize ft' self'@(GenericTextCard x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeUnknownField x'5)
  wirePut ft' self'@(GenericTextCard x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutOpt 18 9 x'3
             P'.wirePutOpt 26 9 x'1
             P'.wirePutOpt 34 9 x'2
             P'.wirePutUnknownField x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{call_to_action_text = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{call_to_action_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{copy = Prelude'.Just new'Field}) (P'.wireGet 9)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{header = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GenericTextCard) GenericTextCard where
  getVal m' f' = f' m'

instance P'.GPB GenericTextCard

instance P'.ReflectDescriptor GenericTextCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.GenericTextCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"GenericTextCard\"}, descFilePath = [\"LevelMoney\",\"GenericTextCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GenericTextCard.call_to_action_text\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GenericTextCard\"], baseName' = FName \"call_to_action_text\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GenericTextCard.call_to_action_url\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GenericTextCard\"], baseName' = FName \"call_to_action_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GenericTextCard.copy\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GenericTextCard\"], baseName' = FName \"copy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GenericTextCard.header\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GenericTextCard\"], baseName' = FName \"header\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType GenericTextCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GenericTextCard where
  textPut msg
   = do
       P'.tellT "call_to_action_text" (call_to_action_text msg)
       P'.tellT "call_to_action_url" (call_to_action_url msg)
       P'.tellT "copy" (copy msg)
       P'.tellT "header" (header msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'call_to_action_text, parse'call_to_action_url, parse'copy, parse'header]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'call_to_action_text
         = P'.try
            (do
               v <- P'.getT "call_to_action_text"
               Prelude'.return (\ o -> o{call_to_action_text = v}))
        parse'call_to_action_url
         = P'.try
            (do
               v <- P'.getT "call_to_action_url"
               Prelude'.return (\ o -> o{call_to_action_url = v}))
        parse'copy
         = P'.try
            (do
               v <- P'.getT "copy"
               Prelude'.return (\ o -> o{copy = v}))
        parse'header
         = P'.try
            (do
               v <- P'.getT "header"
               Prelude'.return (\ o -> o{header = v}))