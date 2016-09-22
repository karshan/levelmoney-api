-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.AggErrorStatus where

import Prelude ()
import qualified Data.ProtoBufInt as PB

data AggErrorStatus = Unknown | NoError | Unhealthy | ISenseADisturbance | Closed
  deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default AggErrorStatus where
  defaultVal = Unknown

instance PB.Mergeable AggErrorStatus where

instance PB.WireEnum AggErrorStatus where
  intToEnum 0 = Unknown
  intToEnum 1 = NoError
  intToEnum 2 = Unhealthy
  intToEnum 3 = ISenseADisturbance
  intToEnum 4 = Closed
  intToEnum _ = PB.defaultVal

  enumToInt Unknown = 0
  enumToInt NoError = 1
  enumToInt Unhealthy = 2
  enumToInt ISenseADisturbance = 3
  enumToInt Closed = 4


