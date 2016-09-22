{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.DisplayCard (DisplayCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.DisplayType as LevelMoney (DisplayType)

data DisplayCard = DisplayCard{description :: !(P'.Maybe P'.Utf8), display_type :: !(P'.Maybe LevelMoney.DisplayType),
                               unknown'field :: !(P'.UnknownField)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage DisplayCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable DisplayCard where
  mergeAppend (DisplayCard x'1 x'2 x'3) (DisplayCard y'1 y'2 y'3)
   = DisplayCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3)

instance P'.Default DisplayCard where
  defaultValue = DisplayCard P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire DisplayCard where
  wireSize ft' self'@(DisplayCard x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 14 x'2 + P'.wireSizeUnknownField x'3)
  wirePut ft' self'@(DisplayCard x'1 x'2 x'3)
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
             P'.wirePutUnknownField x'3
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{description = Prelude'.Just new'Field}) (P'.wireGet 9)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{display_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DisplayCard) DisplayCard where
  getVal m' f' = f' m'

instance P'.GPB DisplayCard

instance P'.ReflectDescriptor DisplayCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.DisplayCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"DisplayCard\"}, descFilePath = [\"LevelMoney\",\"DisplayCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.DisplayCard.description\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"DisplayCard\"], baseName' = FName \"description\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.DisplayCard.display_type\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"DisplayCard\"], baseName' = FName \"display_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.DisplayType\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"DisplayType\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType DisplayCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DisplayCard where
  textPut msg
   = do
       P'.tellT "description" (description msg)
       P'.tellT "display_type" (display_type msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'description, parse'display_type]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'description
         = P'.try
            (do
               v <- P'.getT "description"
               Prelude'.return (\ o -> o{description = v}))
        parse'display_type
         = P'.try
            (do
               v <- P'.getT "display_type"
               Prelude'.return (\ o -> o{display_type = v}))