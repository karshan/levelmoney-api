{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.ClearedScheduledTransferCard (ClearedScheduledTransferCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ClearedScheduledTransferCard = ClearedScheduledTransferCard{scheduled_transfer_id :: !(P'.Maybe P'.Utf8),
                                                                 source_transaction_id :: !(P'.Maybe P'.Utf8),
                                                                 target_transaction_id :: !(P'.Maybe P'.Utf8),
                                                                 unknown'field :: !(P'.UnknownField)}
                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                            Prelude'.Generic)

instance P'.UnknownMessage ClearedScheduledTransferCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable ClearedScheduledTransferCard where
  mergeAppend (ClearedScheduledTransferCard x'1 x'2 x'3 x'4) (ClearedScheduledTransferCard y'1 y'2 y'3 y'4)
   = ClearedScheduledTransferCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)
      (P'.mergeAppend x'4 y'4)

instance P'.Default ClearedScheduledTransferCard where
  defaultValue = ClearedScheduledTransferCard P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire ClearedScheduledTransferCard where
  wireSize ft' self'@(ClearedScheduledTransferCard x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeUnknownField x'4)
  wirePut ft' self'@(ClearedScheduledTransferCard x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutOpt 18 9 x'2
             P'.wirePutOpt 26 9 x'3
             P'.wirePutUnknownField x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{scheduled_transfer_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{source_transaction_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{target_transaction_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ClearedScheduledTransferCard) ClearedScheduledTransferCard where
  getVal m' f' = f' m'

instance P'.GPB ClearedScheduledTransferCard

instance P'.ReflectDescriptor ClearedScheduledTransferCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.ClearedScheduledTransferCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ClearedScheduledTransferCard\"}, descFilePath = [\"LevelMoney\",\"ClearedScheduledTransferCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ClearedScheduledTransferCard.scheduled_transfer_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ClearedScheduledTransferCard\"], baseName' = FName \"scheduled_transfer_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ClearedScheduledTransferCard.source_transaction_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ClearedScheduledTransferCard\"], baseName' = FName \"source_transaction_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ClearedScheduledTransferCard.target_transaction_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ClearedScheduledTransferCard\"], baseName' = FName \"target_transaction_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType ClearedScheduledTransferCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ClearedScheduledTransferCard where
  textPut msg
   = do
       P'.tellT "scheduled_transfer_id" (scheduled_transfer_id msg)
       P'.tellT "source_transaction_id" (source_transaction_id msg)
       P'.tellT "target_transaction_id" (target_transaction_id msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'scheduled_transfer_id, parse'source_transaction_id, parse'target_transaction_id])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'scheduled_transfer_id
         = P'.try
            (do
               v <- P'.getT "scheduled_transfer_id"
               Prelude'.return (\ o -> o{scheduled_transfer_id = v}))
        parse'source_transaction_id
         = P'.try
            (do
               v <- P'.getT "source_transaction_id"
               Prelude'.return (\ o -> o{source_transaction_id = v}))
        parse'target_transaction_id
         = P'.try
            (do
               v <- P'.getT "target_transaction_id"
               Prelude'.return (\ o -> o{target_transaction_id = v}))