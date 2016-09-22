{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.SuggestedAddToExistingBucketCard (SuggestedAddToExistingBucketCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data SuggestedAddToExistingBucketCard = SuggestedAddToExistingBucketCard{bucket_id :: !(P'.Maybe P'.Utf8),
                                                                         transaction_id :: !(P'.Maybe P'.Utf8),
                                                                         unknown'field :: !(P'.UnknownField)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                                Prelude'.Generic)

instance P'.UnknownMessage SuggestedAddToExistingBucketCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable SuggestedAddToExistingBucketCard where
  mergeAppend (SuggestedAddToExistingBucketCard x'1 x'2 x'3) (SuggestedAddToExistingBucketCard y'1 y'2 y'3)
   = SuggestedAddToExistingBucketCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)

instance P'.Default SuggestedAddToExistingBucketCard where
  defaultValue = SuggestedAddToExistingBucketCard P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire SuggestedAddToExistingBucketCard where
  wireSize ft' self'@(SuggestedAddToExistingBucketCard x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeUnknownField x'3)
  wirePut ft' self'@(SuggestedAddToExistingBucketCard x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'2
             P'.wirePutOpt 18 9 x'1
             P'.wirePutUnknownField x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{bucket_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{transaction_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SuggestedAddToExistingBucketCard) SuggestedAddToExistingBucketCard where
  getVal m' f' = f' m'

instance P'.GPB SuggestedAddToExistingBucketCard

instance P'.ReflectDescriptor SuggestedAddToExistingBucketCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.SuggestedAddToExistingBucketCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"SuggestedAddToExistingBucketCard\"}, descFilePath = [\"LevelMoney\",\"SuggestedAddToExistingBucketCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.SuggestedAddToExistingBucketCard.bucket_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"SuggestedAddToExistingBucketCard\"], baseName' = FName \"bucket_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.SuggestedAddToExistingBucketCard.transaction_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"SuggestedAddToExistingBucketCard\"], baseName' = FName \"transaction_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType SuggestedAddToExistingBucketCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SuggestedAddToExistingBucketCard where
  textPut msg
   = do
       P'.tellT "bucket_id" (bucket_id msg)
       P'.tellT "transaction_id" (transaction_id msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'bucket_id, parse'transaction_id]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'bucket_id
         = P'.try
            (do
               v <- P'.getT "bucket_id"
               Prelude'.return (\ o -> o{bucket_id = v}))
        parse'transaction_id
         = P'.try
            (do
               v <- P'.getT "transaction_id"
               Prelude'.return (\ o -> o{transaction_id = v}))