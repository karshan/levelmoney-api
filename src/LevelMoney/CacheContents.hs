{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.CacheContents (CacheContents(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.Account as LevelMoney (Account)
import qualified LevelMoney.AutosaveData as LevelMoney (AutosaveData)
import qualified LevelMoney.Bucket as LevelMoney (Bucket)
import qualified LevelMoney.Card as LevelMoney (Card)
import qualified LevelMoney.FeatureFlags as LevelMoney (FeatureFlags)
import qualified LevelMoney.Transaction as LevelMoney (Transaction)

data CacheContents = CacheContents{accounts :: !(P'.Seq LevelMoney.Account), autosave_data :: !(P'.Maybe LevelMoney.AutosaveData),
                                   buckets :: !(P'.Seq LevelMoney.Bucket), cards :: !(P'.Seq LevelMoney.Card),
                                   features :: !(P'.Maybe LevelMoney.FeatureFlags), has_lulz_v3_spendable :: !(P'.Maybe P'.Bool),
                                   projected_transactions :: !(P'.Seq LevelMoney.Transaction),
                                   transactions :: !(P'.Seq LevelMoney.Transaction), transactions_cursor :: !(P'.Maybe P'.Int64),
                                   v3_spendable :: !(P'.Maybe P'.Int64), unknown'field :: !(P'.UnknownField)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage CacheContents where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable CacheContents where
  mergeAppend (CacheContents x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   (CacheContents y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11)
   = CacheContents (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)

instance P'.Default CacheContents where
  defaultValue
   = CacheContents P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire CacheContents where
  wireSize ft' self'@(CacheContents x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 2 11 x'1 + P'.wireSizeOpt 2 11 x'2 + P'.wireSizeRep 2 11 x'3 + P'.wireSizeRep 2 11 x'4 +
             P'.wireSizeOpt 2 11 x'5
             + P'.wireSizeOpt 2 8 x'6
             + P'.wireSizeRep 2 11 x'7
             + P'.wireSizeRep 2 11 x'8
             + P'.wireSizeOpt 2 3 x'9
             + P'.wireSizeOpt 2 3 x'10
             + P'.wireSizeUnknownField x'11)
  wirePut ft' self'@(CacheContents x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 162 11 x'1
             P'.wirePutRep 170 11 x'8
             P'.wirePutRep 178 11 x'3
             P'.wirePutRep 186 11 x'7
             P'.wirePutOpt 192 3 x'9
             P'.wirePutRep 242 11 x'4
             P'.wirePutOpt 248 3 x'10
             P'.wirePutOpt 256 8 x'6
             P'.wirePutOpt 322 11 x'5
             P'.wirePutOpt 402 11 x'2
             P'.wirePutUnknownField x'11
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             162 -> Prelude'.fmap (\ !new'Field -> old'Self{accounts = P'.append (accounts old'Self) new'Field}) (P'.wireGet 11)
             402 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{autosave_data = P'.mergeAppend (autosave_data old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             178 -> Prelude'.fmap (\ !new'Field -> old'Self{buckets = P'.append (buckets old'Self) new'Field}) (P'.wireGet 11)
             242 -> Prelude'.fmap (\ !new'Field -> old'Self{cards = P'.append (cards old'Self) new'Field}) (P'.wireGet 11)
             322 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{features = P'.mergeAppend (features old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             256 -> Prelude'.fmap (\ !new'Field -> old'Self{has_lulz_v3_spendable = Prelude'.Just new'Field}) (P'.wireGet 8)
             186 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{projected_transactions = P'.append (projected_transactions old'Self) new'Field})
                     (P'.wireGet 11)
             170 -> Prelude'.fmap (\ !new'Field -> old'Self{transactions = P'.append (transactions old'Self) new'Field})
                     (P'.wireGet 11)
             192 -> Prelude'.fmap (\ !new'Field -> old'Self{transactions_cursor = Prelude'.Just new'Field}) (P'.wireGet 3)
             248 -> Prelude'.fmap (\ !new'Field -> old'Self{v3_spendable = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CacheContents) CacheContents where
  getVal m' f' = f' m'

instance P'.GPB CacheContents

instance P'.ReflectDescriptor CacheContents where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [162, 170, 178, 186, 192, 242, 248, 256, 322, 402])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.CacheContents\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CacheContents\"}, descFilePath = [\"LevelMoney\",\"CacheContents.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.accounts\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"accounts\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Account\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Account\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.autosave_data\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"autosave_data\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 50}, wireTag = WireTag {getWireTag = 402}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.AutosaveData\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"AutosaveData\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.buckets\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"buckets\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Bucket\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Bucket\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.cards\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"cards\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 30}, wireTag = WireTag {getWireTag = 242}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Card\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Card\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.features\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"features\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 40}, wireTag = WireTag {getWireTag = 322}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.FeatureFlags\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"FeatureFlags\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.has_lulz_v3_spendable\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"has_lulz_v3_spendable\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 32}, wireTag = WireTag {getWireTag = 256}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.projected_transactions\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"projected_transactions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 186}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Transaction\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Transaction\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.transactions\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"transactions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Transaction\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Transaction\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.transactions_cursor\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"transactions_cursor\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 192}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CacheContents.v3_spendable\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CacheContents\"], baseName' = FName \"v3_spendable\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 31}, wireTag = WireTag {getWireTag = 248}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType CacheContents where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CacheContents where
  textPut msg
   = do
       P'.tellT "accounts" (accounts msg)
       P'.tellT "autosave_data" (autosave_data msg)
       P'.tellT "buckets" (buckets msg)
       P'.tellT "cards" (cards msg)
       P'.tellT "features" (features msg)
       P'.tellT "has_lulz_v3_spendable" (has_lulz_v3_spendable msg)
       P'.tellT "projected_transactions" (projected_transactions msg)
       P'.tellT "transactions" (transactions msg)
       P'.tellT "transactions_cursor" (transactions_cursor msg)
       P'.tellT "v3_spendable" (v3_spendable msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'accounts, parse'autosave_data, parse'buckets, parse'cards, parse'features, parse'has_lulz_v3_spendable,
                   parse'projected_transactions, parse'transactions, parse'transactions_cursor, parse'v3_spendable])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'accounts
         = P'.try
            (do
               v <- P'.getT "accounts"
               Prelude'.return (\ o -> o{accounts = P'.append (accounts o) v}))
        parse'autosave_data
         = P'.try
            (do
               v <- P'.getT "autosave_data"
               Prelude'.return (\ o -> o{autosave_data = v}))
        parse'buckets
         = P'.try
            (do
               v <- P'.getT "buckets"
               Prelude'.return (\ o -> o{buckets = P'.append (buckets o) v}))
        parse'cards
         = P'.try
            (do
               v <- P'.getT "cards"
               Prelude'.return (\ o -> o{cards = P'.append (cards o) v}))
        parse'features
         = P'.try
            (do
               v <- P'.getT "features"
               Prelude'.return (\ o -> o{features = v}))
        parse'has_lulz_v3_spendable
         = P'.try
            (do
               v <- P'.getT "has_lulz_v3_spendable"
               Prelude'.return (\ o -> o{has_lulz_v3_spendable = v}))
        parse'projected_transactions
         = P'.try
            (do
               v <- P'.getT "projected_transactions"
               Prelude'.return (\ o -> o{projected_transactions = P'.append (projected_transactions o) v}))
        parse'transactions
         = P'.try
            (do
               v <- P'.getT "transactions"
               Prelude'.return (\ o -> o{transactions = P'.append (transactions o) v}))
        parse'transactions_cursor
         = P'.try
            (do
               v <- P'.getT "transactions_cursor"
               Prelude'.return (\ o -> o{transactions_cursor = v}))
        parse'v3_spendable
         = P'.try
            (do
               v <- P'.getT "v3_spendable"
               Prelude'.return (\ o -> o{v3_spendable = v}))