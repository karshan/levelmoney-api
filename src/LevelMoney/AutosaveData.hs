{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.AutosaveData (AutosaveData(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.AutosaveStatus as LevelMoney (AutosaveStatus)
import qualified LevelMoney.ScheduledTransfer as LevelMoney (ScheduledTransfer)

data AutosaveData = AutosaveData{autosave_status :: !(P'.Maybe LevelMoney.AutosaveStatus),
                                 funding_account_id :: !(P'.Maybe P'.Utf8),
                                 has_lulz_minimum_funding_account_balance :: !(P'.Maybe P'.Bool),
                                 has_lulz_savings_target_amount :: !(P'.Maybe P'.Bool),
                                 minimum_funding_account_balance :: !(P'.Maybe P'.Int64),
                                 past_scheduled_transfers :: !(P'.Seq LevelMoney.ScheduledTransfer),
                                 savings_target_amount :: !(P'.Maybe P'.Int64),
                                 scheduled_smansfer :: !(P'.Maybe LevelMoney.ScheduledTransfer),
                                 scheduled_withdrawal :: !(P'.Maybe LevelMoney.ScheduledTransfer),
                                 target_account_id :: !(P'.Maybe P'.Utf8), unknown'field :: !(P'.UnknownField)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage AutosaveData where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable AutosaveData where
  mergeAppend (AutosaveData x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   (AutosaveData y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11)
   = AutosaveData (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)

instance P'.Default AutosaveData where
  defaultValue
   = AutosaveData P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire AutosaveData where
  wireSize ft' self'@(AutosaveData x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeOpt 1 8 x'4 +
             P'.wireSizeOpt 1 3 x'5
             + P'.wireSizeRep 1 11 x'6
             + P'.wireSizeOpt 1 3 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeOpt 1 11 x'9
             + P'.wireSizeOpt 1 9 x'10
             + P'.wireSizeUnknownField x'11)
  wirePut ft' self'@(AutosaveData x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'1
             P'.wirePutOpt 16 8 x'4
             P'.wirePutOpt 24 3 x'7
             P'.wirePutOpt 32 8 x'3
             P'.wirePutOpt 40 3 x'5
             P'.wirePutOpt 50 9 x'2
             P'.wirePutOpt 58 9 x'10
             P'.wirePutOpt 66 11 x'8
             P'.wirePutOpt 74 11 x'9
             P'.wirePutRep 82 11 x'6
             P'.wirePutUnknownField x'11
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{autosave_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{funding_account_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{has_lulz_minimum_funding_account_balance = Prelude'.Just new'Field})
                    (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{has_lulz_savings_target_amount = Prelude'.Just new'Field}) (P'.wireGet 8)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{minimum_funding_account_balance = Prelude'.Just new'Field})
                    (P'.wireGet 3)
             82 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{past_scheduled_transfers = P'.append (past_scheduled_transfers old'Self) new'Field})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{savings_target_amount = Prelude'.Just new'Field}) (P'.wireGet 3)
             66 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{scheduled_smansfer = P'.mergeAppend (scheduled_smansfer old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             74 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{scheduled_withdrawal = P'.mergeAppend (scheduled_withdrawal old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{target_account_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AutosaveData) AutosaveData where
  getVal m' f' = f' m'

instance P'.GPB AutosaveData

instance P'.ReflectDescriptor AutosaveData where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 24, 32, 40, 50, 58, 66, 74, 82])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.AutosaveData\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"AutosaveData\"}, descFilePath = [\"LevelMoney\",\"AutosaveData.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.autosave_status\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"autosave_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.AutosaveStatus\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"AutosaveStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.funding_account_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"funding_account_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.has_lulz_minimum_funding_account_balance\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"has_lulz_minimum_funding_account_balance\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.has_lulz_savings_target_amount\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"has_lulz_savings_target_amount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.minimum_funding_account_balance\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"minimum_funding_account_balance\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.past_scheduled_transfers\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"past_scheduled_transfers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.ScheduledTransfer\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ScheduledTransfer\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.savings_target_amount\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"savings_target_amount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.scheduled_smansfer\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"scheduled_smansfer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.ScheduledTransfer\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ScheduledTransfer\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.scheduled_withdrawal\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"scheduled_withdrawal\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.ScheduledTransfer\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ScheduledTransfer\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AutosaveData.target_account_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AutosaveData\"], baseName' = FName \"target_account_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType AutosaveData where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AutosaveData where
  textPut msg
   = do
       P'.tellT "autosave_status" (autosave_status msg)
       P'.tellT "funding_account_id" (funding_account_id msg)
       P'.tellT "has_lulz_minimum_funding_account_balance" (has_lulz_minimum_funding_account_balance msg)
       P'.tellT "has_lulz_savings_target_amount" (has_lulz_savings_target_amount msg)
       P'.tellT "minimum_funding_account_balance" (minimum_funding_account_balance msg)
       P'.tellT "past_scheduled_transfers" (past_scheduled_transfers msg)
       P'.tellT "savings_target_amount" (savings_target_amount msg)
       P'.tellT "scheduled_smansfer" (scheduled_smansfer msg)
       P'.tellT "scheduled_withdrawal" (scheduled_withdrawal msg)
       P'.tellT "target_account_id" (target_account_id msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'autosave_status, parse'funding_account_id, parse'has_lulz_minimum_funding_account_balance,
                   parse'has_lulz_savings_target_amount, parse'minimum_funding_account_balance, parse'past_scheduled_transfers,
                   parse'savings_target_amount, parse'scheduled_smansfer, parse'scheduled_withdrawal, parse'target_account_id])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'autosave_status
         = P'.try
            (do
               v <- P'.getT "autosave_status"
               Prelude'.return (\ o -> o{autosave_status = v}))
        parse'funding_account_id
         = P'.try
            (do
               v <- P'.getT "funding_account_id"
               Prelude'.return (\ o -> o{funding_account_id = v}))
        parse'has_lulz_minimum_funding_account_balance
         = P'.try
            (do
               v <- P'.getT "has_lulz_minimum_funding_account_balance"
               Prelude'.return (\ o -> o{has_lulz_minimum_funding_account_balance = v}))
        parse'has_lulz_savings_target_amount
         = P'.try
            (do
               v <- P'.getT "has_lulz_savings_target_amount"
               Prelude'.return (\ o -> o{has_lulz_savings_target_amount = v}))
        parse'minimum_funding_account_balance
         = P'.try
            (do
               v <- P'.getT "minimum_funding_account_balance"
               Prelude'.return (\ o -> o{minimum_funding_account_balance = v}))
        parse'past_scheduled_transfers
         = P'.try
            (do
               v <- P'.getT "past_scheduled_transfers"
               Prelude'.return (\ o -> o{past_scheduled_transfers = P'.append (past_scheduled_transfers o) v}))
        parse'savings_target_amount
         = P'.try
            (do
               v <- P'.getT "savings_target_amount"
               Prelude'.return (\ o -> o{savings_target_amount = v}))
        parse'scheduled_smansfer
         = P'.try
            (do
               v <- P'.getT "scheduled_smansfer"
               Prelude'.return (\ o -> o{scheduled_smansfer = v}))
        parse'scheduled_withdrawal
         = P'.try
            (do
               v <- P'.getT "scheduled_withdrawal"
               Prelude'.return (\ o -> o{scheduled_withdrawal = v}))
        parse'target_account_id
         = P'.try
            (do
               v <- P'.getT "target_account_id"
               Prelude'.return (\ o -> o{target_account_id = v}))