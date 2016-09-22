{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.SummaryCard (SummaryCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data SummaryCard = SummaryCard{active_bucket_ids :: !(P'.Seq P'.Utf8), highlighted_transaction_ids :: !(P'.Seq P'.Utf8),
                               total_bills :: !(P'.Maybe P'.Int64), total_spending :: !(P'.Maybe P'.Int64),
                               total_transactions :: !(P'.Maybe P'.Int64), unknown'field :: !(P'.UnknownField)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage SummaryCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable SummaryCard where
  mergeAppend (SummaryCard x'1 x'2 x'3 x'4 x'5 x'6) (SummaryCard y'1 y'2 y'3 y'4 y'5 y'6)
   = SummaryCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)

instance P'.Default SummaryCard where
  defaultValue = SummaryCard P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire SummaryCard where
  wireSize ft' self'@(SummaryCard x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeRep 1 9 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeUnknownField x'6)
  wirePut ft' self'@(SummaryCard x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 3 x'4
             P'.wirePutOpt 16 3 x'3
             P'.wirePutOpt 24 3 x'5
             P'.wirePutRep 34 9 x'1
             P'.wirePutRep 42 9 x'2
             P'.wirePutUnknownField x'6
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{active_bucket_ids = P'.append (active_bucket_ids old'Self) new'Field})
                    (P'.wireGet 9)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{highlighted_transaction_ids = P'.append (highlighted_transaction_ids old'Self) new'Field})
                    (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{total_bills = Prelude'.Just new'Field}) (P'.wireGet 3)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{total_spending = Prelude'.Just new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{total_transactions = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SummaryCard) SummaryCard where
  getVal m' f' = f' m'

instance P'.GPB SummaryCard

instance P'.ReflectDescriptor SummaryCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.SummaryCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"SummaryCard\"}, descFilePath = [\"LevelMoney\",\"SummaryCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.SummaryCard.active_bucket_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"SummaryCard\"], baseName' = FName \"active_bucket_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.SummaryCard.highlighted_transaction_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"SummaryCard\"], baseName' = FName \"highlighted_transaction_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.SummaryCard.total_bills\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"SummaryCard\"], baseName' = FName \"total_bills\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.SummaryCard.total_spending\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"SummaryCard\"], baseName' = FName \"total_spending\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.SummaryCard.total_transactions\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"SummaryCard\"], baseName' = FName \"total_transactions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType SummaryCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SummaryCard where
  textPut msg
   = do
       P'.tellT "active_bucket_ids" (active_bucket_ids msg)
       P'.tellT "highlighted_transaction_ids" (highlighted_transaction_ids msg)
       P'.tellT "total_bills" (total_bills msg)
       P'.tellT "total_spending" (total_spending msg)
       P'.tellT "total_transactions" (total_transactions msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'active_bucket_ids, parse'highlighted_transaction_ids, parse'total_bills, parse'total_spending,
                   parse'total_transactions])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'active_bucket_ids
         = P'.try
            (do
               v <- P'.getT "active_bucket_ids"
               Prelude'.return (\ o -> o{active_bucket_ids = P'.append (active_bucket_ids o) v}))
        parse'highlighted_transaction_ids
         = P'.try
            (do
               v <- P'.getT "highlighted_transaction_ids"
               Prelude'.return (\ o -> o{highlighted_transaction_ids = P'.append (highlighted_transaction_ids o) v}))
        parse'total_bills
         = P'.try
            (do
               v <- P'.getT "total_bills"
               Prelude'.return (\ o -> o{total_bills = v}))
        parse'total_spending
         = P'.try
            (do
               v <- P'.getT "total_spending"
               Prelude'.return (\ o -> o{total_spending = v}))
        parse'total_transactions
         = P'.try
            (do
               v <- P'.getT "total_transactions"
               Prelude'.return (\ o -> o{total_transactions = v}))