{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.TransferCard (TransferCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data TransferCard = TransferCard{transaction_ids :: !(P'.Seq P'.Utf8), unknown'field :: !(P'.UnknownField)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage TransferCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable TransferCard where
  mergeAppend (TransferCard x'1 x'2) (TransferCard y'1 y'2) = TransferCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default TransferCard where
  defaultValue = TransferCard P'.defaultValue P'.defaultValue

instance P'.Wire TransferCard where
  wireSize ft' self'@(TransferCard x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 9 x'1 + P'.wireSizeUnknownField x'2)
  wirePut ft' self'@(TransferCard x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutRep 10 9 x'1
             P'.wirePutUnknownField x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{transaction_ids = P'.append (transaction_ids old'Self) new'Field})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> TransferCard) TransferCard where
  getVal m' f' = f' m'

instance P'.GPB TransferCard

instance P'.ReflectDescriptor TransferCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.TransferCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"TransferCard\"}, descFilePath = [\"LevelMoney\",\"TransferCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.TransferCard.transaction_ids\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"TransferCard\"], baseName' = FName \"transaction_ids\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType TransferCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg TransferCard where
  textPut msg
   = do
       P'.tellT "transaction_ids" (transaction_ids msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'transaction_ids]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'transaction_ids
         = P'.try
            (do
               v <- P'.getT "transaction_ids"
               Prelude'.return (\ o -> o{transaction_ids = P'.append (transaction_ids o) v}))