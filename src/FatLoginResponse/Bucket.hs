-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.Bucket where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB
import qualified FatLoginResponse.Transaction
import qualified FatLoginResponse.BucketType
import qualified FatLoginResponse.DisplayStyle

data Bucket = Bucket
  { archetypeTransactions :: !(PB.Seq FatLoginResponse.Transaction.Transaction)
  , blacklistedTransactionIds :: !(PB.Seq PB.Text)
  , bucketId :: !(PB.Maybe PB.Text)
  , bucketType :: !(PB.Maybe FatLoginResponse.BucketType.BucketType)
  , color :: !(PB.Maybe PB.Int32)
  , displayStyle :: !(PB.Maybe FatLoginResponse.DisplayStyle.DisplayStyle)
  , dummy :: !(PB.Maybe PB.Bool)
  , icon :: !(PB.Maybe PB.Text)
  , isAutogenerated :: !(PB.Maybe PB.Bool)
  , lastUpdateTimestamp :: !(PB.Maybe PB.Int64)
  , matchedPredictedTransactionIds :: !(PB.Seq PB.Text)
  , matchedTransactionIds :: !(PB.Seq PB.Text)
  , title :: !(PB.Maybe PB.Text)
  , whitelistedTransactionIds :: !(PB.Seq PB.Text)
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Bucket where
  defaultVal = Bucket
    { archetypeTransactions = PB.defaultVal
    , blacklistedTransactionIds = PB.defaultVal
    , bucketId = PB.defaultVal
    , bucketType = PB.defaultVal
    , color = PB.defaultVal
    , displayStyle = PB.defaultVal
    , dummy = PB.defaultVal
    , icon = PB.defaultVal
    , isAutogenerated = PB.defaultVal
    , lastUpdateTimestamp = PB.defaultVal
    , matchedPredictedTransactionIds = PB.defaultVal
    , matchedTransactionIds = PB.defaultVal
    , title = PB.defaultVal
    , whitelistedTransactionIds = PB.defaultVal
    }

instance PB.Mergeable Bucket where
  merge a b = Bucket
    { archetypeTransactions = PB.merge (archetypeTransactions a) (archetypeTransactions b)
    , blacklistedTransactionIds = PB.merge (blacklistedTransactionIds a) (blacklistedTransactionIds b)
    , bucketId = PB.merge (bucketId a) (bucketId b)
    , bucketType = PB.merge (bucketType a) (bucketType b)
    , color = PB.merge (color a) (color b)
    , displayStyle = PB.merge (displayStyle a) (displayStyle b)
    , dummy = PB.merge (dummy a) (dummy b)
    , icon = PB.merge (icon a) (icon b)
    , isAutogenerated = PB.merge (isAutogenerated a) (isAutogenerated b)
    , lastUpdateTimestamp = PB.merge (lastUpdateTimestamp a) (lastUpdateTimestamp b)
    , matchedPredictedTransactionIds = PB.merge (matchedPredictedTransactionIds a) (matchedPredictedTransactionIds b)
    , matchedTransactionIds = PB.merge (matchedTransactionIds a) (matchedTransactionIds b)
    , title = PB.merge (title a) (title b)
    , whitelistedTransactionIds = PB.merge (whitelistedTransactionIds a) (whitelistedTransactionIds b)
    }

instance PB.Required Bucket where
  reqTags _ = PB.fromList []

instance PB.WireMessage Bucket where
  fieldToValue (PB.WireTag 10 PB.LenDelim) self = (\v -> self{archetypeTransactions = PB.append (archetypeTransactions self) v}) <$> PB.getMessage
  fieldToValue (PB.WireTag 12 PB.LenDelim) self = (\v -> self{blacklistedTransactionIds = PB.append (blacklistedTransactionIds self) v}) <$> PB.getString
  fieldToValue (PB.WireTag 9 PB.LenDelim) self = (\v -> self{bucketId = PB.merge (bucketId self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 32 PB.LenDelim) self = (\v -> self{bucketType = PB.merge (bucketType self) v}) <$> PB.getEnumOpt
  fieldToValue (PB.WireTag 22 PB.VarInt) self = (\v -> self{color = PB.merge (color self) v}) <$> PB.getInt32Opt
  fieldToValue (PB.WireTag 23 PB.LenDelim) self = (\v -> self{displayStyle = PB.merge (displayStyle self) v}) <$> PB.getEnumOpt
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{dummy = PB.merge (dummy self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 21 PB.LenDelim) self = (\v -> self{icon = PB.merge (icon self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 33 PB.VarInt) self = (\v -> self{isAutogenerated = PB.merge (isAutogenerated self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 2 PB.VarInt) self = (\v -> self{lastUpdateTimestamp = PB.merge (lastUpdateTimestamp self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 14 PB.LenDelim) self = (\v -> self{matchedPredictedTransactionIds = PB.append (matchedPredictedTransactionIds self) v}) <$> PB.getString
  fieldToValue (PB.WireTag 13 PB.LenDelim) self = (\v -> self{matchedTransactionIds = PB.append (matchedTransactionIds self) v}) <$> PB.getString
  fieldToValue (PB.WireTag 20 PB.LenDelim) self = (\v -> self{title = PB.merge (title self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 11 PB.LenDelim) self = (\v -> self{whitelistedTransactionIds = PB.append (whitelistedTransactionIds self) v}) <$> PB.getString
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putMessageList (PB.WireTag 10 PB.LenDelim) (archetypeTransactions self)
    PB.putStringList (PB.WireTag 12 PB.LenDelim) (blacklistedTransactionIds self)
    PB.putStringOpt (PB.WireTag 9 PB.LenDelim) (bucketId self)
    PB.putEnumOpt (PB.WireTag 32 PB.LenDelim) (bucketType self)
    PB.putInt32Opt (PB.WireTag 22 PB.VarInt) (color self)
    PB.putEnumOpt (PB.WireTag 23 PB.LenDelim) (displayStyle self)
    PB.putBoolOpt (PB.WireTag 1 PB.VarInt) (dummy self)
    PB.putStringOpt (PB.WireTag 21 PB.LenDelim) (icon self)
    PB.putBoolOpt (PB.WireTag 33 PB.VarInt) (isAutogenerated self)
    PB.putInt64Opt (PB.WireTag 2 PB.VarInt) (lastUpdateTimestamp self)
    PB.putStringList (PB.WireTag 14 PB.LenDelim) (matchedPredictedTransactionIds self)
    PB.putStringList (PB.WireTag 13 PB.LenDelim) (matchedTransactionIds self)
    PB.putStringOpt (PB.WireTag 20 PB.LenDelim) (title self)
    PB.putStringList (PB.WireTag 11 PB.LenDelim) (whitelistedTransactionIds self)

