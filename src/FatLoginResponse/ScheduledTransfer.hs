-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.ScheduledTransfer where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB
import qualified FatLoginResponse.TransferStatus

data ScheduledTransfer = ScheduledTransfer
  { amount :: !(PB.Maybe PB.Int64)
  , cancellationTimestamp :: !(PB.Maybe PB.Int64)
  , fundingAccountId :: !(PB.Maybe PB.Text)
  , isCancellable :: !(PB.Maybe PB.Bool)
  , scheduledTimestamp :: !(PB.Maybe PB.Int64)
  , scheduledTransferId :: !(PB.Maybe PB.Text)
  , targetAccountId :: !(PB.Maybe PB.Text)
  , transferStatus :: !(PB.Maybe FatLoginResponse.TransferStatus.TransferStatus)
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default ScheduledTransfer where
  defaultVal = ScheduledTransfer
    { amount = PB.defaultVal
    , cancellationTimestamp = PB.defaultVal
    , fundingAccountId = PB.defaultVal
    , isCancellable = PB.defaultVal
    , scheduledTimestamp = PB.defaultVal
    , scheduledTransferId = PB.defaultVal
    , targetAccountId = PB.defaultVal
    , transferStatus = PB.defaultVal
    }

instance PB.Mergeable ScheduledTransfer where
  merge a b = ScheduledTransfer
    { amount = PB.merge (amount a) (amount b)
    , cancellationTimestamp = PB.merge (cancellationTimestamp a) (cancellationTimestamp b)
    , fundingAccountId = PB.merge (fundingAccountId a) (fundingAccountId b)
    , isCancellable = PB.merge (isCancellable a) (isCancellable b)
    , scheduledTimestamp = PB.merge (scheduledTimestamp a) (scheduledTimestamp b)
    , scheduledTransferId = PB.merge (scheduledTransferId a) (scheduledTransferId b)
    , targetAccountId = PB.merge (targetAccountId a) (targetAccountId b)
    , transferStatus = PB.merge (transferStatus a) (transferStatus b)
    }

instance PB.Required ScheduledTransfer where
  reqTags _ = PB.fromList []

instance PB.WireMessage ScheduledTransfer where
  fieldToValue (PB.WireTag 6 PB.VarInt) self = (\v -> self{amount = PB.merge (amount self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 5 PB.VarInt) self = (\v -> self{cancellationTimestamp = PB.merge (cancellationTimestamp self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 2 PB.LenDelim) self = (\v -> self{fundingAccountId = PB.merge (fundingAccountId self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 7 PB.VarInt) self = (\v -> self{isCancellable = PB.merge (isCancellable self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 4 PB.VarInt) self = (\v -> self{scheduledTimestamp = PB.merge (scheduledTimestamp self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{scheduledTransferId = PB.merge (scheduledTransferId self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 3 PB.LenDelim) self = (\v -> self{targetAccountId = PB.merge (targetAccountId self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 8 PB.LenDelim) self = (\v -> self{transferStatus = PB.merge (transferStatus self) v}) <$> PB.getEnumOpt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putInt64Opt (PB.WireTag 6 PB.VarInt) (amount self)
    PB.putInt64Opt (PB.WireTag 5 PB.VarInt) (cancellationTimestamp self)
    PB.putStringOpt (PB.WireTag 2 PB.LenDelim) (fundingAccountId self)
    PB.putBoolOpt (PB.WireTag 7 PB.VarInt) (isCancellable self)
    PB.putInt64Opt (PB.WireTag 4 PB.VarInt) (scheduledTimestamp self)
    PB.putStringOpt (PB.WireTag 1 PB.LenDelim) (scheduledTransferId self)
    PB.putStringOpt (PB.WireTag 3 PB.LenDelim) (targetAccountId self)
    PB.putEnumOpt (PB.WireTag 8 PB.LenDelim) (transferStatus self)

