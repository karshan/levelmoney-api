{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.Bucket (Bucket(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.BucketType as LevelMoney (BucketType)
import qualified LevelMoney.DisplayStyle as LevelMoney (DisplayStyle)
import qualified LevelMoney.Transaction as LevelMoney (Transaction)

data Bucket = Bucket{archetype_transactions :: !(P'.Seq LevelMoney.Transaction), blacklisted_transaction_ids :: !(P'.Seq P'.Utf8),
                     bucket_id :: !(P'.Maybe P'.Utf8), bucket_type :: !(P'.Maybe LevelMoney.BucketType),
                     color :: !(P'.Maybe P'.Int32), display_style :: !(P'.Maybe LevelMoney.DisplayStyle),
                     dummy :: !(P'.Maybe P'.Bool), icon :: !(P'.Maybe P'.Utf8), is_autogenerated :: !(P'.Maybe P'.Bool),
                     last_update_timestamp :: !(P'.Maybe P'.Int64), matched_predicted_transaction_ids :: !(P'.Seq P'.Utf8),
                     matched_transaction_ids :: !(P'.Seq P'.Utf8), title :: !(P'.Maybe P'.Utf8),
                     whitelisted_transaction_ids :: !(P'.Seq P'.Utf8), unknown'field :: !(P'.UnknownField)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage Bucket where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable Bucket where
  mergeAppend (Bucket x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   (Bucket y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15)
   = Bucket (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
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

instance P'.Default Bucket where
  defaultValue
   = Bucket P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire Bucket where
  wireSize ft' self'@(Bucket x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeRep 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 2 14 x'4 +
             P'.wireSizeOpt 2 5 x'5
             + P'.wireSizeOpt 2 14 x'6
             + P'.wireSizeOpt 1 8 x'7
             + P'.wireSizeOpt 2 9 x'8
             + P'.wireSizeOpt 2 8 x'9
             + P'.wireSizeOpt 1 3 x'10
             + P'.wireSizeRep 1 9 x'11
             + P'.wireSizeRep 1 9 x'12
             + P'.wireSizeOpt 2 9 x'13
             + P'.wireSizeRep 1 9 x'14
             + P'.wireSizeUnknownField x'15)
  wirePut ft' self'@(Bucket x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 8 x'7
             P'.wirePutOpt 16 3 x'10
             P'.wirePutOpt 74 9 x'3
             P'.wirePutRep 82 11 x'1
             P'.wirePutRep 90 9 x'14
             P'.wirePutRep 98 9 x'2
             P'.wirePutRep 106 9 x'12
             P'.wirePutRep 114 9 x'11
             P'.wirePutOpt 162 9 x'13
             P'.wirePutOpt 170 9 x'8
             P'.wirePutOpt 176 5 x'5
             P'.wirePutOpt 184 14 x'6
             P'.wirePutOpt 256 14 x'4
             P'.wirePutOpt 264 8 x'9
             P'.wirePutUnknownField x'15
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             82 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{archetype_transactions = P'.append (archetype_transactions old'Self) new'Field})
                    (P'.wireGet 11)
             98 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{blacklisted_transaction_ids = P'.append (blacklisted_transaction_ids old'Self) new'Field})
                    (P'.wireGet 9)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{bucket_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             256 -> Prelude'.fmap (\ !new'Field -> old'Self{bucket_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             176 -> Prelude'.fmap (\ !new'Field -> old'Self{color = Prelude'.Just new'Field}) (P'.wireGet 5)
             184 -> Prelude'.fmap (\ !new'Field -> old'Self{display_style = Prelude'.Just new'Field}) (P'.wireGet 14)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{dummy = Prelude'.Just new'Field}) (P'.wireGet 8)
             170 -> Prelude'.fmap (\ !new'Field -> old'Self{icon = Prelude'.Just new'Field}) (P'.wireGet 9)
             264 -> Prelude'.fmap (\ !new'Field -> old'Self{is_autogenerated = Prelude'.Just new'Field}) (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{last_update_timestamp = Prelude'.Just new'Field}) (P'.wireGet 3)
             114 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{matched_predicted_transaction_ids =
                                 P'.append (matched_predicted_transaction_ids old'Self) new'Field})
                     (P'.wireGet 9)
             106 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{matched_transaction_ids = P'.append (matched_transaction_ids old'Self) new'Field})
                     (P'.wireGet 9)
             162 -> Prelude'.fmap (\ !new'Field -> old'Self{title = Prelude'.Just new'Field}) (P'.wireGet 9)
             90 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{whitelisted_transaction_ids = P'.append (whitelisted_transaction_ids old'Self) new'Field})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Bucket) Bucket where
  getVal m' f' = f' m'

instance P'.GPB Bucket

instance P'.ReflectDescriptor Bucket where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [8, 16, 74, 82, 90, 98, 106, 114, 162, 170, 176, 184, 256, 264])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.Bucket\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Bucket\"}, descFilePath = [\"LevelMoney\",\"Bucket.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.archetype_transactions\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"archetype_transactions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Transaction\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Transaction\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.blacklisted_transaction_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"blacklisted_transaction_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.bucket_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"bucket_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.bucket_type\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"bucket_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 32}, wireTag = WireTag {getWireTag = 256}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.BucketType\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"BucketType\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.color\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"color\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 176}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 5}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.display_style\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"display_style\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 184}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.DisplayStyle\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"DisplayStyle\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.dummy\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"dummy\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.icon\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"icon\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.is_autogenerated\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"is_autogenerated\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 33}, wireTag = WireTag {getWireTag = 264}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.last_update_timestamp\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"last_update_timestamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.matched_predicted_transaction_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"matched_predicted_transaction_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.matched_transaction_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"matched_transaction_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.title\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"title\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Bucket.whitelisted_transaction_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Bucket\"], baseName' = FName \"whitelisted_transaction_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType Bucket where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Bucket where
  textPut msg
   = do
       P'.tellT "archetype_transactions" (archetype_transactions msg)
       P'.tellT "blacklisted_transaction_ids" (blacklisted_transaction_ids msg)
       P'.tellT "bucket_id" (bucket_id msg)
       P'.tellT "bucket_type" (bucket_type msg)
       P'.tellT "color" (color msg)
       P'.tellT "display_style" (display_style msg)
       P'.tellT "dummy" (dummy msg)
       P'.tellT "icon" (icon msg)
       P'.tellT "is_autogenerated" (is_autogenerated msg)
       P'.tellT "last_update_timestamp" (last_update_timestamp msg)
       P'.tellT "matched_predicted_transaction_ids" (matched_predicted_transaction_ids msg)
       P'.tellT "matched_transaction_ids" (matched_transaction_ids msg)
       P'.tellT "title" (title msg)
       P'.tellT "whitelisted_transaction_ids" (whitelisted_transaction_ids msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'archetype_transactions, parse'blacklisted_transaction_ids, parse'bucket_id, parse'bucket_type, parse'color,
                   parse'display_style, parse'dummy, parse'icon, parse'is_autogenerated, parse'last_update_timestamp,
                   parse'matched_predicted_transaction_ids, parse'matched_transaction_ids, parse'title,
                   parse'whitelisted_transaction_ids])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'archetype_transactions
         = P'.try
            (do
               v <- P'.getT "archetype_transactions"
               Prelude'.return (\ o -> o{archetype_transactions = P'.append (archetype_transactions o) v}))
        parse'blacklisted_transaction_ids
         = P'.try
            (do
               v <- P'.getT "blacklisted_transaction_ids"
               Prelude'.return (\ o -> o{blacklisted_transaction_ids = P'.append (blacklisted_transaction_ids o) v}))
        parse'bucket_id
         = P'.try
            (do
               v <- P'.getT "bucket_id"
               Prelude'.return (\ o -> o{bucket_id = v}))
        parse'bucket_type
         = P'.try
            (do
               v <- P'.getT "bucket_type"
               Prelude'.return (\ o -> o{bucket_type = v}))
        parse'color
         = P'.try
            (do
               v <- P'.getT "color"
               Prelude'.return (\ o -> o{color = v}))
        parse'display_style
         = P'.try
            (do
               v <- P'.getT "display_style"
               Prelude'.return (\ o -> o{display_style = v}))
        parse'dummy
         = P'.try
            (do
               v <- P'.getT "dummy"
               Prelude'.return (\ o -> o{dummy = v}))
        parse'icon
         = P'.try
            (do
               v <- P'.getT "icon"
               Prelude'.return (\ o -> o{icon = v}))
        parse'is_autogenerated
         = P'.try
            (do
               v <- P'.getT "is_autogenerated"
               Prelude'.return (\ o -> o{is_autogenerated = v}))
        parse'last_update_timestamp
         = P'.try
            (do
               v <- P'.getT "last_update_timestamp"
               Prelude'.return (\ o -> o{last_update_timestamp = v}))
        parse'matched_predicted_transaction_ids
         = P'.try
            (do
               v <- P'.getT "matched_predicted_transaction_ids"
               Prelude'.return (\ o -> o{matched_predicted_transaction_ids = P'.append (matched_predicted_transaction_ids o) v}))
        parse'matched_transaction_ids
         = P'.try
            (do
               v <- P'.getT "matched_transaction_ids"
               Prelude'.return (\ o -> o{matched_transaction_ids = P'.append (matched_transaction_ids o) v}))
        parse'title
         = P'.try
            (do
               v <- P'.getT "title"
               Prelude'.return (\ o -> o{title = v}))
        parse'whitelisted_transaction_ids
         = P'.try
            (do
               v <- P'.getT "whitelisted_transaction_ids"
               Prelude'.return (\ o -> o{whitelisted_transaction_ids = P'.append (whitelisted_transaction_ids o) v}))