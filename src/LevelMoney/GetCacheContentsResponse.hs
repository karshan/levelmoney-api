{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.GetCacheContentsResponse (GetCacheContentsResponse(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.CacheContents as LevelMoney (CacheContents)
import qualified LevelMoney.Error as LevelMoney (Error)
import qualified LevelMoney.Events as LevelMoney (Events)
import qualified LevelMoney.GetCacheContentsError as LevelMoney (GetCacheContentsError)

data GetCacheContentsResponse = GetCacheContentsResponse{cache_contents :: !(P'.Maybe LevelMoney.CacheContents),
                                                         error :: !(P'.Maybe LevelMoney.Error),
                                                         error2 :: !(P'.Maybe LevelMoney.GetCacheContentsError),
                                                         events :: !(P'.Maybe LevelMoney.Events),
                                                         unknown'field :: !(P'.UnknownField)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                        Prelude'.Generic)

instance P'.UnknownMessage GetCacheContentsResponse where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable GetCacheContentsResponse where
  mergeAppend (GetCacheContentsResponse x'1 x'2 x'3 x'4 x'5) (GetCacheContentsResponse y'1 y'2 y'3 y'4 y'5)
   = GetCacheContentsResponse (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)

instance P'.Default GetCacheContentsResponse where
  defaultValue = GetCacheContentsResponse P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire GetCacheContentsResponse where
  wireSize ft' self'@(GetCacheContentsResponse x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 14 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeUnknownField x'5)
  wirePut ft' self'@(GetCacheContentsResponse x'1 x'2 x'3 x'4 x'5)
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
             P'.wirePutOpt 18 11 x'4
             P'.wirePutOpt 24 14 x'3
             P'.wirePutOpt 34 11 x'1
             P'.wirePutUnknownField x'5
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{cache_contents = P'.mergeAppend (cache_contents old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{error = Prelude'.Just new'Field}) (P'.wireGet 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{error2 = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{events = P'.mergeAppend (events old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GetCacheContentsResponse) GetCacheContentsResponse where
  getVal m' f' = f' m'

instance P'.GPB GetCacheContentsResponse

instance P'.ReflectDescriptor GetCacheContentsResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 24, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.GetCacheContentsResponse\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"GetCacheContentsResponse\"}, descFilePath = [\"LevelMoney\",\"GetCacheContentsResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GetCacheContentsResponse.cache_contents\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GetCacheContentsResponse\"], baseName' = FName \"cache_contents\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.CacheContents\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CacheContents\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GetCacheContentsResponse.error\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GetCacheContentsResponse\"], baseName' = FName \"error\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Error\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Error\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GetCacheContentsResponse.error2\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GetCacheContentsResponse\"], baseName' = FName \"error2\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.GetCacheContentsError\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"GetCacheContentsError\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GetCacheContentsResponse.events\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GetCacheContentsResponse\"], baseName' = FName \"events\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Events\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Events\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType GetCacheContentsResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GetCacheContentsResponse where
  textPut msg
   = do
       P'.tellT "cache_contents" (cache_contents msg)
       P'.tellT "error" (error msg)
       P'.tellT "error2" (error2 msg)
       P'.tellT "events" (events msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'cache_contents, parse'error, parse'error2, parse'events]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'cache_contents
         = P'.try
            (do
               v <- P'.getT "cache_contents"
               Prelude'.return (\ o -> o{cache_contents = v}))
        parse'error
         = P'.try
            (do
               v <- P'.getT "error"
               Prelude'.return (\ o -> o{error = v}))
        parse'error2
         = P'.try
            (do
               v <- P'.getT "error2"
               Prelude'.return (\ o -> o{error2 = v}))
        parse'events
         = P'.try
            (do
               v <- P'.getT "events"
               Prelude'.return (\ o -> o{events = v}))