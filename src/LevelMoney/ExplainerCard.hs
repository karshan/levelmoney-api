{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.ExplainerCard (ExplainerCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.ExplainerType as LevelMoney (ExplainerType)

data ExplainerCard = ExplainerCard{explainer_type :: !(P'.Maybe LevelMoney.ExplainerType), unknown'field :: !(P'.UnknownField)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage ExplainerCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable ExplainerCard where
  mergeAppend (ExplainerCard x'1 x'2) (ExplainerCard y'1 y'2) = ExplainerCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default ExplainerCard where
  defaultValue = ExplainerCard P'.defaultValue P'.defaultValue

instance P'.Wire ExplainerCard where
  wireSize ft' self'@(ExplainerCard x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeUnknownField x'2)
  wirePut ft' self'@(ExplainerCard x'1 x'2)
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
             P'.wirePutUnknownField x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{explainer_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ExplainerCard) ExplainerCard where
  getVal m' f' = f' m'

instance P'.GPB ExplainerCard

instance P'.ReflectDescriptor ExplainerCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.ExplainerCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ExplainerCard\"}, descFilePath = [\"LevelMoney\",\"ExplainerCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.ExplainerCard.explainer_type\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"ExplainerCard\"], baseName' = FName \"explainer_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.ExplainerType\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ExplainerType\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType ExplainerCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ExplainerCard where
  textPut msg
   = do
       P'.tellT "explainer_type" (explainer_type msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'explainer_type]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'explainer_type
         = P'.try
            (do
               v <- P'.getT "explainer_type"
               Prelude'.return (\ o -> o{explainer_type = v}))