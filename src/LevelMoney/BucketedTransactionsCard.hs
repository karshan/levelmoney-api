{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.BucketedTransactionsCard (BucketedTransactionsCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data BucketedTransactionsCard = BucketedTransactionsCard{bucket_ids :: !(P'.Seq P'.Utf8), transaction_ids :: !(P'.Seq P'.Utf8),
                                                         unknown'field :: !(P'.UnknownField)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                        Prelude'.Generic)

instance P'.UnknownMessage BucketedTransactionsCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable BucketedTransactionsCard where
  mergeAppend (BucketedTransactionsCard x'1 x'2 x'3) (BucketedTransactionsCard y'1 y'2 y'3)
   = BucketedTransactionsCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)

instance P'.Default BucketedTransactionsCard where
  defaultValue = BucketedTransactionsCard P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire BucketedTransactionsCard where
  wireSize ft' self'@(BucketedTransactionsCard x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeRep 1 9 x'2 + P'.wireSizeUnknownField x'3)
  wirePut ft' self'@(BucketedTransactionsCard x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 9 x'2
             P'.wirePutRep 18 9 x'1
             P'.wirePutUnknownField x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{bucket_ids = P'.append (bucket_ids old'Self) new'Field}) (P'.wireGet 9)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{transaction_ids = P'.append (transaction_ids old'Self) new'Field})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> BucketedTransactionsCard) BucketedTransactionsCard where
  getVal m' f' = f' m'

instance P'.GPB BucketedTransactionsCard

instance P'.ReflectDescriptor BucketedTransactionsCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.BucketedTransactionsCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"BucketedTransactionsCard\"}, descFilePath = [\"LevelMoney\",\"BucketedTransactionsCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.BucketedTransactionsCard.bucket_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"BucketedTransactionsCard\"], baseName' = FName \"bucket_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.BucketedTransactionsCard.transaction_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"BucketedTransactionsCard\"], baseName' = FName \"transaction_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType BucketedTransactionsCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg BucketedTransactionsCard where
  textPut msg
   = do
       P'.tellT "bucket_ids" (bucket_ids msg)
       P'.tellT "transaction_ids" (transaction_ids msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'bucket_ids, parse'transaction_ids]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'bucket_ids
         = P'.try
            (do
               v <- P'.getT "bucket_ids"
               Prelude'.return (\ o -> o{bucket_ids = P'.append (bucket_ids o) v}))
        parse'transaction_ids
         = P'.try
            (do
               v <- P'.getT "transaction_ids"
               Prelude'.return (\ o -> o{transaction_ids = P'.append (transaction_ids o) v}))