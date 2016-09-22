-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.TransferStatus where

import Prelude ()
import qualified Data.ProtoBufInt as PB

data TransferStatus = UnknownStatus | UnknownFailure | Scheduled | Pending | Cleared | CancelledDueToInsufficientFunds | CancelledByUser | CancelledByLevel | CancelledByBank
  deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default TransferStatus where
  defaultVal = UnknownStatus

instance PB.Mergeable TransferStatus where

instance PB.WireEnum TransferStatus where
  intToEnum 0 = UnknownStatus
  intToEnum 1 = UnknownFailure
  intToEnum 2 = Scheduled
  intToEnum 3 = Pending
  intToEnum 4 = Cleared
  intToEnum 5 = CancelledDueToInsufficientFunds
  intToEnum 6 = CancelledByUser
  intToEnum 7 = CancelledByLevel
  intToEnum 8 = CancelledByBank
  intToEnum _ = PB.defaultVal

  enumToInt UnknownStatus = 0
  enumToInt UnknownFailure = 1
  enumToInt Scheduled = 2
  enumToInt Pending = 3
  enumToInt Cleared = 4
  enumToInt CancelledDueToInsufficientFunds = 5
  enumToInt CancelledByUser = 6
  enumToInt CancelledByLevel = 7
  enumToInt CancelledByBank = 8

