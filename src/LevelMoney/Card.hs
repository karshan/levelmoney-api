{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.Card (Card(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.BucketedTransactionsCard as LevelMoney (BucketedTransactionsCard)
import qualified LevelMoney.CancelledScheduledTransferCard as LevelMoney (CancelledScheduledTransferCard)
import qualified LevelMoney.CardFlag as LevelMoney (CardFlag)
import qualified LevelMoney.CardType as LevelMoney (CardType)
import qualified LevelMoney.ClearedScheduledTransferCard as LevelMoney (ClearedScheduledTransferCard)
import qualified LevelMoney.DisplayCard as LevelMoney (DisplayCard)
import qualified LevelMoney.ExplainerCard as LevelMoney (ExplainerCard)
import qualified LevelMoney.GenericTextCard as LevelMoney (GenericTextCard)
import qualified LevelMoney.NormieCard as LevelMoney (NormieCard)
import qualified LevelMoney.PendingScheduledTransferCard as LevelMoney (PendingScheduledTransferCard)
import qualified LevelMoney.SuggestedAddToExistingBucketCard as LevelMoney (SuggestedAddToExistingBucketCard)
import qualified LevelMoney.SuggestedTransactionCard as LevelMoney (SuggestedTransactionCard)
import qualified LevelMoney.SummaryCard as LevelMoney (SummaryCard)
import qualified LevelMoney.TransferCard as LevelMoney (TransferCard)
import qualified LevelMoney.UpcomingScheduledTransferCard as LevelMoney (UpcomingScheduledTransferCard)

data Card = Card{bucketed_transactions :: !(P'.Maybe LevelMoney.BucketedTransactionsCard),
                 cancelled_scheduled_transfer :: !(P'.Maybe LevelMoney.CancelledScheduledTransferCard),
                 card_id :: !(P'.Maybe P'.Utf8), card_type :: !(P'.Maybe LevelMoney.CardType),
                 cleared_scheduled_transfer :: !(P'.Maybe LevelMoney.ClearedScheduledTransferCard),
                 display :: !(P'.Maybe LevelMoney.DisplayCard), explainer :: !(P'.Maybe LevelMoney.ExplainerCard),
                 flags :: !(P'.Seq LevelMoney.CardFlag), generic_text :: !(P'.Maybe LevelMoney.GenericTextCard),
                 normie :: !(P'.Maybe LevelMoney.NormieCard),
                 pending_scheduled_transfer :: !(P'.Maybe LevelMoney.PendingScheduledTransferCard),
                 sort_order :: !(P'.Maybe P'.Int64),
                 suggested_add_to_existing_bucket :: !(P'.Maybe LevelMoney.SuggestedAddToExistingBucketCard),
                 suggested_transaction :: !(P'.Maybe LevelMoney.SuggestedTransactionCard),
                 summary :: !(P'.Maybe LevelMoney.SummaryCard), transfer :: !(P'.Maybe LevelMoney.TransferCard),
                 upcoming_scheduled_transfer :: !(P'.Maybe LevelMoney.UpcomingScheduledTransferCard),
                 unknown'field :: !(P'.UnknownField)}
          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage Card where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable Card where
  mergeAppend (Card x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   (Card y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18)
   = Card (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
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

instance P'.Default Card where
  defaultValue
   = Card P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
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

instance P'.Wire Card where
  wireSize ft' self'@(Card x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 2 11 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 14 x'4 +
             P'.wireSizeOpt 2 11 x'5
             + P'.wireSizeOpt 2 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeRep 1 14 x'8
             + P'.wireSizeOpt 1 11 x'9
             + P'.wireSizeOpt 1 11 x'10
             + P'.wireSizeOpt 2 11 x'11
             + P'.wireSizeOpt 1 3 x'12
             + P'.wireSizeOpt 2 11 x'13
             + P'.wireSizeOpt 1 11 x'14
             + P'.wireSizeOpt 2 11 x'15
             + P'.wireSizeOpt 1 11 x'16
             + P'.wireSizeOpt 2 11 x'17
             + P'.wireSizeUnknownField x'18)
  wirePut ft' self'@(Card x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'3
             P'.wirePutOpt 16 3 x'12
             P'.wirePutOpt 24 14 x'4
             P'.wirePutRep 32 14 x'8
             P'.wirePutOpt 82 11 x'10
             P'.wirePutOpt 90 11 x'16
             P'.wirePutOpt 98 11 x'1
             P'.wirePutOpt 106 11 x'14
             P'.wirePutOpt 114 11 x'7
             P'.wirePutOpt 122 11 x'9
             P'.wirePutOpt 130 11 x'13
             P'.wirePutOpt 138 11 x'6
             P'.wirePutOpt 146 11 x'15
             P'.wirePutOpt 154 11 x'17
             P'.wirePutOpt 162 11 x'11
             P'.wirePutOpt 170 11 x'2
             P'.wirePutOpt 178 11 x'5
             P'.wirePutUnknownField x'18
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             98 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{bucketed_transactions = P'.mergeAppend (bucketed_transactions old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             170 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{cancelled_scheduled_transfer =
                                 P'.mergeAppend (cancelled_scheduled_transfer old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{card_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{card_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             178 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{cleared_scheduled_transfer =
                                 P'.mergeAppend (cleared_scheduled_transfer old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             138 -> Prelude'.fmap (\ !new'Field -> old'Self{display = P'.mergeAppend (display old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             114 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{explainer = P'.mergeAppend (explainer old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{flags = P'.append (flags old'Self) new'Field}) (P'.wireGet 14)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{flags = P'.mergeAppend (flags old'Self) new'Field}) (P'.wireGetPacked 14)
             122 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{generic_text = P'.mergeAppend (generic_text old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{normie = P'.mergeAppend (normie old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             162 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{pending_scheduled_transfer =
                                 P'.mergeAppend (pending_scheduled_transfer old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{sort_order = Prelude'.Just new'Field}) (P'.wireGet 3)
             130 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{suggested_add_to_existing_bucket =
                                 P'.mergeAppend (suggested_add_to_existing_bucket old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             106 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{suggested_transaction = P'.mergeAppend (suggested_transaction old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             146 -> Prelude'.fmap (\ !new'Field -> old'Self{summary = P'.mergeAppend (summary old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{transfer = P'.mergeAppend (transfer old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             154 -> Prelude'.fmap
                     (\ !new'Field ->
                       old'Self{upcoming_scheduled_transfer =
                                 P'.mergeAppend (upcoming_scheduled_transfer old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Card) Card where
  getVal m' f' = f' m'

instance P'.GPB Card

instance P'.ReflectDescriptor Card where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList [10, 16, 24, 32, 34, 82, 90, 98, 106, 114, 122, 130, 138, 146, 154, 162, 170, 178])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.Card\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Card\"}, descFilePath = [\"LevelMoney\",\"Card.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.bucketed_transactions\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"bucketed_transactions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.BucketedTransactionsCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"BucketedTransactionsCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.cancelled_scheduled_transfer\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"cancelled_scheduled_transfer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 170}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.CancelledScheduledTransferCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CancelledScheduledTransferCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.card_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"card_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.card_type\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"card_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.CardType\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CardType\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.cleared_scheduled_transfer\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"cleared_scheduled_transfer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 178}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.ClearedScheduledTransferCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ClearedScheduledTransferCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.display\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"display\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 138}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.DisplayCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"DisplayCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.explainer\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"explainer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 114}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.ExplainerCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"ExplainerCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.flags\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"flags\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Just (WireTag {getWireTag = 32},WireTag {getWireTag = 34}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.CardFlag\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CardFlag\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.generic_text\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"generic_text\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 122}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.GenericTextCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"GenericTextCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.normie\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"normie\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.NormieCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"NormieCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.pending_scheduled_transfer\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"pending_scheduled_transfer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.PendingScheduledTransferCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"PendingScheduledTransferCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.sort_order\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"sort_order\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.suggested_add_to_existing_bucket\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"suggested_add_to_existing_bucket\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 130}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.SuggestedAddToExistingBucketCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"SuggestedAddToExistingBucketCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.suggested_transaction\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"suggested_transaction\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.SuggestedTransactionCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"SuggestedTransactionCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.summary\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"summary\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 146}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.SummaryCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"SummaryCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.transfer\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"transfer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.TransferCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"TransferCard\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Card.upcoming_scheduled_transfer\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Card\"], baseName' = FName \"upcoming_scheduled_transfer\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 154}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.UpcomingScheduledTransferCard\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"UpcomingScheduledTransferCard\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType Card where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Card where
  textPut msg
   = do
       P'.tellT "bucketed_transactions" (bucketed_transactions msg)
       P'.tellT "cancelled_scheduled_transfer" (cancelled_scheduled_transfer msg)
       P'.tellT "card_id" (card_id msg)
       P'.tellT "card_type" (card_type msg)
       P'.tellT "cleared_scheduled_transfer" (cleared_scheduled_transfer msg)
       P'.tellT "display" (display msg)
       P'.tellT "explainer" (explainer msg)
       P'.tellT "flags" (flags msg)
       P'.tellT "generic_text" (generic_text msg)
       P'.tellT "normie" (normie msg)
       P'.tellT "pending_scheduled_transfer" (pending_scheduled_transfer msg)
       P'.tellT "sort_order" (sort_order msg)
       P'.tellT "suggested_add_to_existing_bucket" (suggested_add_to_existing_bucket msg)
       P'.tellT "suggested_transaction" (suggested_transaction msg)
       P'.tellT "summary" (summary msg)
       P'.tellT "transfer" (transfer msg)
       P'.tellT "upcoming_scheduled_transfer" (upcoming_scheduled_transfer msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'bucketed_transactions, parse'cancelled_scheduled_transfer, parse'card_id, parse'card_type,
                   parse'cleared_scheduled_transfer, parse'display, parse'explainer, parse'flags, parse'generic_text, parse'normie,
                   parse'pending_scheduled_transfer, parse'sort_order, parse'suggested_add_to_existing_bucket,
                   parse'suggested_transaction, parse'summary, parse'transfer, parse'upcoming_scheduled_transfer])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'bucketed_transactions
         = P'.try
            (do
               v <- P'.getT "bucketed_transactions"
               Prelude'.return (\ o -> o{bucketed_transactions = v}))
        parse'cancelled_scheduled_transfer
         = P'.try
            (do
               v <- P'.getT "cancelled_scheduled_transfer"
               Prelude'.return (\ o -> o{cancelled_scheduled_transfer = v}))
        parse'card_id
         = P'.try
            (do
               v <- P'.getT "card_id"
               Prelude'.return (\ o -> o{card_id = v}))
        parse'card_type
         = P'.try
            (do
               v <- P'.getT "card_type"
               Prelude'.return (\ o -> o{card_type = v}))
        parse'cleared_scheduled_transfer
         = P'.try
            (do
               v <- P'.getT "cleared_scheduled_transfer"
               Prelude'.return (\ o -> o{cleared_scheduled_transfer = v}))
        parse'display
         = P'.try
            (do
               v <- P'.getT "display"
               Prelude'.return (\ o -> o{display = v}))
        parse'explainer
         = P'.try
            (do
               v <- P'.getT "explainer"
               Prelude'.return (\ o -> o{explainer = v}))
        parse'flags
         = P'.try
            (do
               v <- P'.getT "flags"
               Prelude'.return (\ o -> o{flags = P'.append (flags o) v}))
        parse'generic_text
         = P'.try
            (do
               v <- P'.getT "generic_text"
               Prelude'.return (\ o -> o{generic_text = v}))
        parse'normie
         = P'.try
            (do
               v <- P'.getT "normie"
               Prelude'.return (\ o -> o{normie = v}))
        parse'pending_scheduled_transfer
         = P'.try
            (do
               v <- P'.getT "pending_scheduled_transfer"
               Prelude'.return (\ o -> o{pending_scheduled_transfer = v}))
        parse'sort_order
         = P'.try
            (do
               v <- P'.getT "sort_order"
               Prelude'.return (\ o -> o{sort_order = v}))
        parse'suggested_add_to_existing_bucket
         = P'.try
            (do
               v <- P'.getT "suggested_add_to_existing_bucket"
               Prelude'.return (\ o -> o{suggested_add_to_existing_bucket = v}))
        parse'suggested_transaction
         = P'.try
            (do
               v <- P'.getT "suggested_transaction"
               Prelude'.return (\ o -> o{suggested_transaction = v}))
        parse'summary
         = P'.try
            (do
               v <- P'.getT "summary"
               Prelude'.return (\ o -> o{summary = v}))
        parse'transfer
         = P'.try
            (do
               v <- P'.getT "transfer"
               Prelude'.return (\ o -> o{transfer = v}))
        parse'upcoming_scheduled_transfer
         = P'.try
            (do
               v <- P'.getT "upcoming_scheduled_transfer"
               Prelude'.return (\ o -> o{upcoming_scheduled_transfer = v}))