-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.FeatureFlags where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype FeatureFlags = FeatureFlags
  { isSmartSavingsEnabled :: PB.Maybe PB.Bool
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default FeatureFlags where
  defaultVal = FeatureFlags
    { isSmartSavingsEnabled = PB.defaultVal
    }

instance PB.Mergeable FeatureFlags where
  merge a b = FeatureFlags
    { isSmartSavingsEnabled = PB.merge (isSmartSavingsEnabled a) (isSmartSavingsEnabled b)
    }

instance PB.Required FeatureFlags where
  reqTags _ = PB.fromList []

instance PB.WireMessage FeatureFlags where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{isSmartSavingsEnabled = PB.merge (isSmartSavingsEnabled self) v}) <$> PB.getBoolOpt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putBoolOpt (PB.WireTag 1 PB.VarInt) (isSmartSavingsEnabled self)

