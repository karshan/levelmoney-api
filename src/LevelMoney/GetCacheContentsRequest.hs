{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.GetCacheContentsRequest (GetCacheContentsRequest(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.Args as LevelMoney (Args)

data GetCacheContentsRequest = GetCacheContentsRequest{args :: !(P'.Maybe LevelMoney.Args), card_version :: !(P'.Maybe P'.Int32),
                                                       unknown'field :: !(P'.UnknownField)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage GetCacheContentsRequest where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable GetCacheContentsRequest where
  mergeAppend (GetCacheContentsRequest x'1 x'2 x'3) (GetCacheContentsRequest y'1 y'2 y'3)
   = GetCacheContentsRequest (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)

instance P'.Default GetCacheContentsRequest where
  defaultValue = GetCacheContentsRequest P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire GetCacheContentsRequest where
  wireSize ft' self'@(GetCacheContentsRequest x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 5 x'2 + P'.wireSizeUnknownField x'3)
  wirePut ft' self'@(GetCacheContentsRequest x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 11 x'1
             P'.wirePutOpt 16 5 x'2
             P'.wirePutUnknownField x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{args = P'.mergeAppend (args old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{card_version = Prelude'.Just new'Field}) (P'.wireGet 5)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GetCacheContentsRequest) GetCacheContentsRequest where
  getVal m' f' = f' m'

instance P'.GPB GetCacheContentsRequest

instance P'.ReflectDescriptor GetCacheContentsRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.GetCacheContentsRequest\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"GetCacheContentsRequest\"}, descFilePath = [\"LevelMoney\",\"GetCacheContentsRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GetCacheContentsRequest.args\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GetCacheContentsRequest\"], baseName' = FName \"args\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Args\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Args\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.GetCacheContentsRequest.card_version\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"GetCacheContentsRequest\"], baseName' = FName \"card_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType GetCacheContentsRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GetCacheContentsRequest where
  textPut msg
   = do
       P'.tellT "args" (args msg)
       P'.tellT "card_version" (card_version msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'args, parse'card_version]) P'.spaces
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