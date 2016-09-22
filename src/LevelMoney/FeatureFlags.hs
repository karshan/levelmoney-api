{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.FeatureFlags (FeatureFlags(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data FeatureFlags = FeatureFlags{is_smart_savings_enabled :: !(P'.Maybe P'.Bool), unknown'field :: !(P'.UnknownField)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage FeatureFlags where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable FeatureFlags where
  mergeAppend (FeatureFlags x'1 x'2) (FeatureFlags y'1 y'2) = FeatureFlags (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default FeatureFlags where
  defaultValue = FeatureFlags P'.defaultValue P'.defaultValue

instance P'.Wire FeatureFlags where
  wireSize ft' self'@(FeatureFlags x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1 + P'.wireSizeUnknownField x'2)
  wirePut ft' self'@(FeatureFlags x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 8 x'1
             P'.wirePutUnknownField x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{is_smart_savings_enabled = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> FeatureFlags) FeatureFlags where
  getVal m' f' = f' m'

instance P'.GPB FeatureFlags

instance P'.ReflectDescriptor FeatureFlags where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.FeatureFlags\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"FeatureFlags\"}, descFilePath = [\"LevelMoney\",\"FeatureFlags.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.FeatureFlags.is_smart_savings_enabled\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"FeatureFlags\"], baseName' = FName \"is_smart_savings_enabled\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType FeatureFlags where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg FeatureFlags where
  textPut msg
   = do
       P'.tellT "is_smart_savings_enabled" (is_smart_savings_enabled msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'is_smart_savings_enabled]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'is_smart_savings_enabled
         = P'.try
            (do
               v <- P'.getT "is_smart_savings_enabled"
               Prelude'.return (\ o -> o{is_smart_savings_enabled = v}))