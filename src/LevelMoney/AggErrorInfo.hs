{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.AggErrorInfo (AggErrorInfo(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.AggErrorStatus as LevelMoney (AggErrorStatus)

data AggErrorInfo = AggErrorInfo{account_status_description :: !(P'.Maybe P'.Utf8),
                                 error_status :: !(P'.Maybe LevelMoney.AggErrorStatus),
                                 status_start_timestamp :: !(P'.Maybe P'.Int64), unknown'field :: !(P'.UnknownField)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage AggErrorInfo where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable AggErrorInfo where
  mergeAppend (AggErrorInfo x'1 x'2 x'3 x'4) (AggErrorInfo y'1 y'2 y'3 y'4)
   = AggErrorInfo (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)

instance P'.Default AggErrorInfo where
  defaultValue = AggErrorInfo P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire AggErrorInfo where
  wireSize ft' self'@(AggErrorInfo x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeUnknownField x'4)
  wirePut ft' self'@(AggErrorInfo x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'2
             P'.wirePutOpt 18 9 x'1
             P'.wirePutOpt 24 3 x'3
             P'.wirePutUnknownField x'4
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{account_status_description = Prelude'.Just new'Field}) (P'.wireGet 9)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{error_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{status_start_timestamp = Prelude'.Just new'Field}) (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AggErrorInfo) AggErrorInfo where
  getVal m' f' = f' m'

instance P'.GPB AggErrorInfo

instance P'.ReflectDescriptor AggErrorInfo where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.AggErrorInfo\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"AggErrorInfo\"}, descFilePath = [\"LevelMoney\",\"AggErrorInfo.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AggErrorInfo.account_status_description\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AggErrorInfo\"], baseName' = FName \"account_status_description\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AggErrorInfo.error_status\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AggErrorInfo\"], baseName' = FName \"error_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.AggErrorStatus\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"AggErrorStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.AggErrorInfo.status_start_timestamp\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"AggErrorInfo\"], baseName' = FName \"status_start_timestamp\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType AggErrorInfo where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AggErrorInfo where
  textPut msg
   = do
       P'.tellT "account_status_description" (account_status_description msg)
       P'.tellT "error_status" (error_status msg)
       P'.tellT "status_start_timestamp" (status_start_timestamp msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'account_status_description, parse'error_status, parse'status_start_timestamp])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'account_status_description
         = P'.try
            (do
               v <- P'.getT "account_status_description"
               Prelude'.return (\ o -> o{account_status_description = v}))
        parse'error_status
         = P'.try
            (do
               v <- P'.getT "error_status"
               Prelude'.return (\ o -> o{error_status = v}))
        parse'status_start_timestamp
         = P'.try
            (do
               v <- P'.getT "status_start_timestamp"
               Prelude'.return (\ o -> o{status_start_timestamp = v}))