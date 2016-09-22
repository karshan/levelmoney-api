{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.CancelledScheduledTransferCard (CancelledScheduledTransferCard(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data CancelledScheduledTransferCard = CancelledScheduledTransferCard{scheduled_transfer_id :: !(P'.Maybe P'.Utf8),
                                                                     unknown'field :: !(P'.UnknownField)}
                                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                              Prelude'.Generic)

instance P'.UnknownMessage CancelledScheduledTransferCard where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable CancelledScheduledTransferCard where
  mergeAppend (CancelledScheduledTransferCard x'1 x'2) (CancelledScheduledTransferCard y'1 y'2)
   = CancelledScheduledTransferCard (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2)

instance P'.Default CancelledScheduledTransferCard where
  defaultValue = CancelledScheduledTransferCard P'.defaultValue P'.defaultValue

instance P'.Wire CancelledScheduledTransferCard where
  wireSize ft' self'@(CancelledScheduledTransferCard x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeUnknownField x'2)
  wirePut ft' self'@(CancelledScheduledTransferCard x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutUnknownField x'2
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{scheduled_transfer_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CancelledScheduledTransferCard) CancelledScheduledTransferCard where
  getVal m' f' = f' m'

instance P'.GPB CancelledScheduledTransferCard

instance P'.ReflectDescriptor CancelledScheduledTransferCard where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.CancelledScheduledTransferCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CancelledScheduledTransferCard\"}, descFilePath = [\"LevelMoney\",\"CancelledScheduledTransferCard.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.CancelledScheduledTransferCard.scheduled_transfer_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"CancelledScheduledTransferCard\"], baseName' = FName \"scheduled_transfer_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType CancelledScheduledTransferCard where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CancelledScheduledTransferCard where
  textPut msg
   = do
       P'.tellT "scheduled_transfer_id" (scheduled_transfer_id msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'scheduled_transfer_id]) P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'scheduled_transfer_id
         = P'.try
            (do
               v <- P'.getT "scheduled_transfer_id"
               Prelude'.return (\ o -> o{scheduled_transfer_id = v}))