{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.ScheduledTransfer (ScheduledTransfer(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.TransferStatus as LevelMoney (TransferStatus)

data ScheduledTransfer = ScheduledTransfer{amount :: !(P'.Maybe P'.Int64), cancellation_timestamp :: !(P'.Maybe P'.Int64),
                                           funding_account_id :: !(P'.Maybe P'.Utf8), is_cancellable :: !(P'.Maybe P'.Bool),
                                           scheduled_timestamp :: !(P'.Maybe P'.Int64),
                                           scheduled_transfer_id :: !(P'.Maybe P'.Utf8), target_account_id :: !(P'.Maybe P'.Utf8),
                                           transfer_status :: !(P'.Maybe LevelMoney.TransferStatus),
                                           unknown'field :: !(P'.UnknownField)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage ScheduledTransfer where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable ScheduledTransfer where
  mergeAppend (ScheduledTransfer x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9) (ScheduledTransfer y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9)
   = ScheduledTransfer (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)

instance P'.Default ScheduledTransfer where
  defaultValue
   = ScheduledTransfer P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire ScheduledTransfer where
  wireSize ft' self'@(ScheduledTransfer x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 3 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 8 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeOpt 1 9 x'6
             + P'.wireSizeOpt 1 9 x'7
             + P'.wireSizeOpt 1 14 x'8
             + P'.wireSizeUnknownField x'9)
  wirePut ft' self'@(ScheduledTransfer x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'6
             P'.wirePutOpt 18 9 x'3
             P'.wirePutOpt 26 9 x'7
             P'.wirePutOpt 32 3 x'5
             P'.wirePutOpt 40 3 x'2
             P'.wirePutOpt 48 3 x'1
             P'.wirePutOpt 56 8 x'4
             P'.wirePutOpt 64 14 x'8
             P'.wirePutUnknownField x'9
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{amount = Prelude'.Just new'Field}) (P'.wireGet 3)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{cancellation_timestamp = Prelude'.Just new'Field}) (P'.wireGet 3)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{funding_account_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{is_cancellable = Prelude'.Just new'Field}) (P'.wireGet 8)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{scheduled_timestamp = Prelude'.Just new'Field}) (P'.wireGet 3)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{scheduled_transfer_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{target_account_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{transfer_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ScheduledTransfer) ScheduledTransfer where
  getVal m' f' = f' m'

instance P'.GPB ScheduledTransfer

instance P'.ReflectDescriptor ScheduledTransfer where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 32, 40, 48, 56, 64])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.ScheduledTransfer\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ScheduledTransfer\"}, descFilePath = [\"LevelMoney\",\"ScheduledTransfer.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ScheduledTransfer.amount\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ScheduledTransfer\"], baseName' = FName \"amount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ScheduledTransfer.cancellation_timestamp\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ScheduledTransfer\"], baseName' = FName \"cancellation_timestamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ScheduledTransfer.funding_account_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ScheduledTransfer\"], baseName' = FName \"funding_account_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ScheduledTransfer.is_cancellable\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ScheduledTransfer\"], baseName' = FName \"is_cancellable\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ScheduledTransfer.scheduled_timestamp\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ScheduledTransfer\"], baseName' = FName \"scheduled_timestamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ScheduledTransfer.scheduled_transfer_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ScheduledTransfer\"], baseName' = FName \"scheduled_transfer_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ScheduledTransfer.target_account_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ScheduledTransfer\"], baseName' = FName \"target_account_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ScheduledTransfer.transfer_status\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ScheduledTransfer\"], baseName' = FName \"transfer_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.TransferStatus\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"TransferStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType ScheduledTransfer where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ScheduledTransfer where
  textPut msg
   = do
       P'.tellT "amount" (amount msg)
       P'.tellT "cancellation_timestamp" (cancellation_timestamp msg)
       P'.tellT "funding_account_id" (funding_account_id msg)
       P'.tellT "is_cancellable" (is_cancellable msg)
       P'.tellT "scheduled_timestamp" (scheduled_timestamp msg)
       P'.tellT "scheduled_transfer_id" (scheduled_transfer_id msg)
       P'.tellT "target_account_id" (target_account_id msg)
       P'.tellT "transfer_status" (transfer_status msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'amount, parse'cancellation_timestamp, parse'funding_account_id, parse'is_cancellable,
                   parse'scheduled_timestamp, parse'scheduled_transfer_id, parse'target_account_id, parse'transfer_status])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'amount
         = P'.try
            (do
               v <- P'.getT "amount"
               Prelude'.return (\ o -> o{amount = v}))
        parse'cancellation_timestamp
         = P'.try
            (do
               v <- P'.getT "cancellation_timestamp"
               Prelude'.return (\ o -> o{cancellation_timestamp = v}))
        parse'funding_account_id
         = P'.try
            (do
               v <- P'.getT "funding_account_id"
               Prelude'.return (\ o -> o{funding_account_id = v}))
        parse'is_cancellable
         = P'.try
            (do
               v <- P'.getT "is_cancellable"
               Prelude'.return (\ o -> o{is_cancellable = v}))
        parse'scheduled_timestamp
         = P'.try
            (do
               v <- P'.getT "scheduled_timestamp"
               Prelude'.return (\ o -> o{scheduled_timestamp = v}))
        parse'scheduled_transfer_id
         = P'.try
            (do
               v <- P'.getT "scheduled_transfer_id"
               Prelude'.return (\ o -> o{scheduled_transfer_id = v}))
        parse'target_account_id
         = P'.try
            (do
               v <- P'.getT "target_account_id"
               Prelude'.return (\ o -> o{target_account_id = v}))
        parse'transfer_status
         = P'.try
            (do
               v <- P'.getT "transfer_status"
               Prelude'.return (\ o -> o{transfer_status = v}))