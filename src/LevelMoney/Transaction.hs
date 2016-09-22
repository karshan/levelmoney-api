{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.Transaction (Transaction(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Transaction = Transaction{account_id :: !(P'.Maybe P'.Utf8), aggregation_time :: !(P'.Maybe P'.Int64),
                               amount :: !(P'.Maybe P'.Int64), categorization :: !(P'.Maybe P'.Utf8),
                               clear_date :: !(P'.Maybe P'.Int64), insight_ids :: !(P'.Seq P'.Utf8),
                               is_pending :: !(P'.Maybe P'.Bool), is_transfer :: !(P'.Maybe P'.Bool),
                               memo_only_for_testing :: !(P'.Maybe P'.Utf8), merchant :: !(P'.Maybe P'.Utf8),
                               original_amount :: !(P'.Maybe P'.Int64), original_merchant :: !(P'.Maybe P'.Utf8),
                               original_transaction_time :: !(P'.Maybe P'.Int64), paycheck_id :: !(P'.Maybe P'.Int64),
                               payee_name_only_for_testing :: !(P'.Maybe P'.Utf8),
                               possibly_is_bank_fee_maybe :: !(P'.Maybe P'.Bool), previous_transaction_id :: !(P'.Maybe P'.Utf8),
                               raw_merchant :: !(P'.Maybe P'.Utf8), target_fund_id :: !(P'.Maybe P'.Int64),
                               target_is_goal :: !(P'.Maybe P'.Bool), transaction_id :: !(P'.Maybe P'.Utf8),
                               transaction_time :: !(P'.Maybe P'.Int64), transaction_time_string_read_only :: !(P'.Maybe P'.Utf8),
                               transfer_partner_id :: !(P'.Maybe P'.Utf8), user_json_data :: !(P'.Maybe P'.Utf8),
                               user_note :: !(P'.Maybe P'.Utf8), unknown'field :: !(P'.UnknownField)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage Transaction where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable Transaction where
  mergeAppend
   (Transaction x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24 x'25
     x'26 x'27)
   (Transaction y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21 y'22 y'23 y'24 y'25
     y'26 y'27)
   = Transaction (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)
      (P'.mergeAppend x'16 y'16)
      (P'.mergeAppend x'17 y'17)
      (P'.mergeAppend x'18 y'18)
      (P'.mergeAppend x'19 y'19)
      (P'.mergeAppend x'20 y'20)
      (P'.mergeAppend x'21 y'21)
      (P'.mergeAppend x'22 y'22)
      (P'.mergeAppend x'23 y'23)
      (P'.mergeAppend x'24 y'24)
      (P'.mergeAppend x'25 y'25)
      (P'.mergeAppend x'26 y'26)
      (P'.mergeAppend x'27 y'27)

instance P'.Default Transaction where
  defaultValue
   = Transaction P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire Transaction where
  wireSize ft'
   self'@(Transaction x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25 x'26 x'27)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 2 3 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 2 9 x'4 +
             P'.wireSizeOpt 2 3 x'5
             + P'.wireSizeRep 2 9 x'6
             + P'.wireSizeOpt 1 8 x'7
             + P'.wireSizeOpt 1 8 x'8
             + P'.wireSizeOpt 2 9 x'9
             + P'.wireSizeOpt 1 9 x'10
             + P'.wireSizeOpt 1 3 x'11
             + P'.wireSizeOpt 1 9 x'12
             + P'.wireSizeOpt 1 3 x'13
             + P'.wireSizeOpt 2 3 x'14
             + P'.wireSizeOpt 2 9 x'15
             + P'.wireSizeOpt 1 8 x'16
             + P'.wireSizeOpt 2 9 x'17
             + P'.wireSizeOpt 1 9 x'18
             + P'.wireSizeOpt 1 3 x'19
             + P'.wireSizeOpt 1 8 x'20
             + P'.wireSizeOpt 1 9 x'21
             + P'.wireSizeOpt 1 3 x'22
             + P'.wireSizeOpt 2 9 x'23
             + P'.wireSizeOpt 1 9 x'24
             + P'.wireSizeOpt 2 9 x'25
             + P'.wireSizeOpt 2 9 x'26
             + P'.wireSizeUnknownField x'27)
  wirePut ft'
   self'@(Transaction x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25 x'26 x'27)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'21
             P'.wirePutOpt 18 9 x'1
             P'.wirePutOpt 26 9 x'18
             P'.wirePutOpt 34 9 x'10
             P'.wirePutOpt 40 8 x'7
             P'.wirePutOpt 48 3 x'22
             P'.wirePutOpt 56 3 x'3
             P'.wirePutOpt 64 3 x'19
             P'.wirePutOpt 74 9 x'12
             P'.wirePutOpt 80 3 x'11
             P'.wirePutOpt 88 3 x'13
             P'.wirePutOpt 96 8 x'20
             P'.wirePutOpt 104 8 x'16
             P'.wirePutOpt 112 8 x'8
             P'.wirePutOpt 122 9 x'24
             P'.wirePutOpt 128 3 x'14
             P'.wirePutRep 138 9 x'6
             P'.wirePutOpt 146 9 x'17
             P'.wirePutOpt 154 9 x'26
             P'.wirePutOpt 162 9 x'25
             P'.wirePutOpt 170 9 x'4
             P'.wirePutOpt 178 9 x'23
             P'.wirePutOpt 184 3 x'2
             P'.wirePutOpt 194 9 x'9
             P'.wirePutOpt 202 9 x'15
             P'.wirePutOpt 208 3 x'5
             P'.wirePutUnknownField x'27
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{account_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             184 -> Prelude'.fmap (\ !new'Field -> old'Self{aggregation_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{amount = Prelude'.Just new'Field}) (P'.wireGet 3)
             170 -> Prelude'.fmap (\ !new'Field -> old'Self{categorization = Prelude'.Just new'Field}) (P'.wireGet 9)
             208 -> Prelude'.fmap (\ !new'Field -> old'Self{clear_date = Prelude'.Just new'Field}) (P'.wireGet 3)
             138 -> Prelude'.fmap (\ !new'Field -> old'Self{insight_ids = P'.append (insight_ids old'Self) new'Field})
                     (P'.wireGet 9)
             40 -> Prelude'.fmap (\ !new'Field -> old'Self{is_pending = Prelude'.Just new'Field}) (P'.wireGet 8)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{is_transfer = Prelude'.Just new'Field}) (P'.wireGet 8)
             194 -> Prelude'.fmap (\ !new'Field -> old'Self{memo_only_for_testing = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{merchant = Prelude'.Just new'Field}) (P'.wireGet 9)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{original_amount = Prelude'.Just new'Field}) (P'.wireGet 3)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{original_merchant = Prelude'.Just new'Field}) (P'.wireGet 9)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{original_transaction_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{paycheck_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             202 -> Prelude'.fmap (\ !new'Field -> old'Self{payee_name_only_for_testing = Prelude'.Just new'Field}) (P'.wireGet 9)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{possibly_is_bank_fee_maybe = Prelude'.Just new'Field}) (P'.wireGet 8)
             146 -> Prelude'.fmap (\ !new'Field -> old'Self{previous_transaction_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{raw_merchant = Prelude'.Just new'Field}) (P'.wireGet 9)
             64 -> Prelude'.fmap (\ !new'Field -> old'Self{target_fund_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             96 -> Prelude'.fmap (\ !new'Field -> old'Self{target_is_goal = Prelude'.Just new'Field}) (P'.wireGet 8)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{transaction_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{transaction_time = Prelude'.Just new'Field}) (P'.wireGet 3)
             178 -> Prelude'.fmap (\ !new'Field -> old'Self{transaction_time_string_read_only = Prelude'.Just new'Field})
                     (P'.wireGet 9)
             122 -> Prelude'.fmap (\ !new'Field -> old'Self{transfer_partner_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             162 -> Prelude'.fmap (\ !new'Field -> old'Self{user_json_data = Prelude'.Just new'Field}) (P'.wireGet 9)
             154 -> Prelude'.fmap (\ !new'Field -> old'Self{user_note = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Transaction) Transaction where
  getVal m' f' = f' m'

instance P'.GPB Transaction

instance P'.ReflectDescriptor Transaction where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList
        [10, 18, 26, 34, 40, 48, 56, 64, 74, 80, 88, 96, 104, 112, 122, 128, 138, 146, 154, 162, 170, 178, 184, 194, 202, 208])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.Transaction\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Transaction\"}, descFilePath = [\"LevelMoney\",\"Transaction.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.account_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"account_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.aggregation_time\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"aggregation_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 184}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.amount\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"amount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.categorization\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"categorization\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.clear_date\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"clear_date\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 26}, wireTag = WireTag {getWireTag = 208}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.insight_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"insight_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 138}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.is_pending\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"is_pending\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 40}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.is_transfer\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"is_transfer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.memo_only_for_testing\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"memo_only_for_testing\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 194}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.merchant\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"merchant\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.original_amount\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"original_amount\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.original_merchant\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"original_merchant\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.original_transaction_time\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"original_transaction_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.paycheck_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"paycheck_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.payee_name_only_for_testing\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"payee_name_only_for_testing\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 25}, wireTag = WireTag {getWireTag = 202}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.possibly_is_bank_fee_maybe\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"possibly_is_bank_fee_maybe\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.previous_transaction_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"previous_transaction_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 146}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.raw_merchant\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"raw_merchant\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.target_fund_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"target_fund_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 64}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.target_is_goal\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"target_is_goal\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 96}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.transaction_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"transaction_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.transaction_time\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"transaction_time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.transaction_time_string_read_only\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"transaction_time_string_read_only\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.transfer_partner_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"transfer_partner_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.user_json_data\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"user_json_data\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Transaction.user_note\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Transaction\"], baseName' = FName \"user_note\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 154}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType Transaction where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Transaction where
  textPut msg
   = do
       P'.tellT "account_id" (account_id msg)
       P'.tellT "aggregation_time" (aggregation_time msg)
       P'.tellT "amount" (amount msg)
       P'.tellT "categorization" (categorization msg)
       P'.tellT "clear_date" (clear_date msg)
       P'.tellT "insight_ids" (insight_ids msg)
       P'.tellT "is_pending" (is_pending msg)
       P'.tellT "is_transfer" (is_transfer msg)
       P'.tellT "memo_only_for_testing" (memo_only_for_testing msg)
       P'.tellT "merchant" (merchant msg)
       P'.tellT "original_amount" (original_amount msg)
       P'.tellT "original_merchant" (original_merchant msg)
       P'.tellT "original_transaction_time" (original_transaction_time msg)
       P'.tellT "paycheck_id" (paycheck_id msg)
       P'.tellT "payee_name_only_for_testing" (payee_name_only_for_testing msg)
       P'.tellT "possibly_is_bank_fee_maybe" (possibly_is_bank_fee_maybe msg)
       P'.tellT "previous_transaction_id" (previous_transaction_id msg)
       P'.tellT "raw_merchant" (raw_merchant msg)
       P'.tellT "target_fund_id" (target_fund_id msg)
       P'.tellT "target_is_goal" (target_is_goal msg)
       P'.tellT "transaction_id" (transaction_id msg)
       P'.tellT "transaction_time" (transaction_time msg)
       P'.tellT "transaction_time_string_read_only" (transaction_time_string_read_only msg)
       P'.tellT "transfer_partner_id" (transfer_partner_id msg)
       P'.tellT "user_json_data" (user_json_data msg)
       P'.tellT "user_note" (user_note msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'account_id, parse'aggregation_time, parse'amount, parse'categorization, parse'clear_date,
                   parse'insight_ids, parse'is_pending, parse'is_transfer, parse'memo_only_for_testing, parse'merchant,
                   parse'original_amount, parse'original_merchant, parse'original_transaction_time, parse'paycheck_id,
                   parse'payee_name_only_for_testing, parse'possibly_is_bank_fee_maybe, parse'previous_transaction_id,
                   parse'raw_merchant, parse'target_fund_id, parse'target_is_goal, parse'transaction_id, parse'transaction_time,
                   parse'transaction_time_string_read_only, parse'transfer_partner_id, parse'user_json_data, parse'user_note])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'account_id
         = P'.try
            (do
               v <- P'.getT "account_id"
               Prelude'.return (\ o -> o{account_id = v}))
        parse'aggregation_time
         = P'.try
            (do
               v <- P'.getT "aggregation_time"
               Prelude'.return (\ o -> o{aggregation_time = v}))
        parse'amount
         = P'.try
            (do
               v <- P'.getT "amount"
               Prelude'.return (\ o -> o{amount = v}))
        parse'categorization
         = P'.try
            (do
               v <- P'.getT "categorization"
               Prelude'.return (\ o -> o{categorization = v}))
        parse'clear_date
         = P'.try
            (do
               v <- P'.getT "clear_date"
               Prelude'.return (\ o -> o{clear_date = v}))
        parse'insight_ids
         = P'.try
            (do
               v <- P'.getT "insight_ids"
               Prelude'.return (\ o -> o{insight_ids = P'.append (insight_ids o) v}))
        parse'is_pending
         = P'.try
            (do
               v <- P'.getT "is_pending"
               Prelude'.return (\ o -> o{is_pending = v}))
        parse'is_transfer
         = P'.try
            (do
               v <- P'.getT "is_transfer"
               Prelude'.return (\ o -> o{is_transfer = v}))
        parse'memo_only_for_testing
         = P'.try
            (do
               v <- P'.getT "memo_only_for_testing"
               Prelude'.return (\ o -> o{memo_only_for_testing = v}))
        parse'merchant
         = P'.try
            (do
               v <- P'.getT "merchant"
               Prelude'.return (\ o -> o{merchant = v}))
        parse'original_amount
         = P'.try
            (do
               v <- P'.getT "original_amount"
               Prelude'.return (\ o -> o{original_amount = v}))
        parse'original_merchant
         = P'.try
            (do
               v <- P'.getT "original_merchant"
               Prelude'.return (\ o -> o{original_merchant = v}))
        parse'original_transaction_time
         = P'.try
            (do
               v <- P'.getT "original_transaction_time"
               Prelude'.return (\ o -> o{original_transaction_time = v}))
        parse'paycheck_id
         = P'.try
            (do
               v <- P'.getT "paycheck_id"
               Prelude'.return (\ o -> o{paycheck_id = v}))
        parse'payee_name_only_for_testing
         = P'.try
            (do
               v <- P'.getT "payee_name_only_for_testing"
               Prelude'.return (\ o -> o{payee_name_only_for_testing = v}))
        parse'possibly_is_bank_fee_maybe
         = P'.try
            (do
               v <- P'.getT "possibly_is_bank_fee_maybe"
               Prelude'.return (\ o -> o{possibly_is_bank_fee_maybe = v}))
        parse'previous_transaction_id
         = P'.try
            (do
               v <- P'.getT "previous_transaction_id"
               Prelude'.return (\ o -> o{previous_transaction_id = v}))
        parse'raw_merchant
         = P'.try
            (do
               v <- P'.getT "raw_merchant"
               Prelude'.return (\ o -> o{raw_merchant = v}))
        parse'target_fund_id
         = P'.try
            (do
               v <- P'.getT "target_fund_id"
               Prelude'.return (\ o -> o{target_fund_id = v}))
        parse'target_is_goal
         = P'.try
            (do
               v <- P'.getT "target_is_goal"
               Prelude'.return (\ o -> o{target_is_goal = v}))
        parse'transaction_id
         = P'.try
            (do
               v <- P'.getT "transaction_id"
               Prelude'.return (\ o -> o{transaction_id = v}))
        parse'transaction_time
         = P'.try
            (do
               v <- P'.getT "transaction_time"
               Prelude'.return (\ o -> o{transaction_time = v}))
        parse'transaction_time_string_read_only
         = P'.try
            (do
               v <- P'.getT "transaction_time_string_read_only"
               Prelude'.return (\ o -> o{transaction_time_string_read_only = v}))
        parse'transfer_partner_id
         = P'.try
            (do
               v <- P'.getT "transfer_partner_id"
               Prelude'.return (\ o -> o{transfer_partner_id = v}))
        parse'user_json_data
         = P'.try
            (do
               v <- P'.getT "user_json_data"
               Prelude'.return (\ o -> o{user_json_data = v}))
        parse'user_note
         = P'.try
            (do
               v <- P'.getT "user_note"
               Prelude'.return (\ o -> o{user_note = v}))