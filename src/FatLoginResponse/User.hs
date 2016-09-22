-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.User where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB
import qualified FatLoginResponse.UserAgent

data User = User
  { clientUserAgent :: !(PB.Maybe FatLoginResponse.UserAgent.UserAgent)
  , clientVersion :: !(PB.Maybe PB.Int64)
  , created :: !(PB.Maybe PB.Int64)
  , email :: !(PB.Maybe PB.Text)
  , firstName :: !(PB.Maybe PB.Text)
  , hasAutogeneratedInsights :: !(PB.Maybe PB.Bool)
  , hasBudget :: !(PB.Maybe PB.Bool)
  , lastName :: !(PB.Maybe PB.Text)
  , password :: !(PB.Maybe PB.Text)
  , phoneNumber :: !(PB.Maybe PB.Text)
  , variabillMigrated :: !(PB.Maybe PB.Bool)
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default User where
  defaultVal = User
    { clientUserAgent = PB.defaultVal
    , clientVersion = PB.defaultVal
    , created = PB.defaultVal
    , email = PB.defaultVal
    , firstName = PB.defaultVal
    , hasAutogeneratedInsights = PB.defaultVal
    , hasBudget = PB.defaultVal
    , lastName = PB.defaultVal
    , password = PB.defaultVal
    , phoneNumber = PB.defaultVal
    , variabillMigrated = PB.defaultVal
    }

instance PB.Mergeable User where
  merge a b = User
    { clientUserAgent = PB.merge (clientUserAgent a) (clientUserAgent b)
    , clientVersion = PB.merge (clientVersion a) (clientVersion b)
    , created = PB.merge (created a) (created b)
    , email = PB.merge (email a) (email b)
    , firstName = PB.merge (firstName a) (firstName b)
    , hasAutogeneratedInsights = PB.merge (hasAutogeneratedInsights a) (hasAutogeneratedInsights b)
    , hasBudget = PB.merge (hasBudget a) (hasBudget b)
    , lastName = PB.merge (lastName a) (lastName b)
    , password = PB.merge (password a) (password b)
    , phoneNumber = PB.merge (phoneNumber a) (phoneNumber b)
    , variabillMigrated = PB.merge (variabillMigrated a) (variabillMigrated b)
    }

instance PB.Required User where
  reqTags _ = PB.fromList []

instance PB.WireMessage User where
  fieldToValue (PB.WireTag 10 PB.LenDelim) self = (\v -> self{clientUserAgent = PB.merge (clientUserAgent self) v}) <$> PB.getEnumOpt
  fieldToValue (PB.WireTag 11 PB.VarInt) self = (\v -> self{clientVersion = PB.merge (clientVersion self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 4 PB.VarInt) self = (\v -> self{created = PB.merge (created self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{email = PB.merge (email self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 8 PB.LenDelim) self = (\v -> self{firstName = PB.merge (firstName self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 6 PB.VarInt) self = (\v -> self{hasAutogeneratedInsights = PB.merge (hasAutogeneratedInsights self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 3 PB.VarInt) self = (\v -> self{hasBudget = PB.merge (hasBudget self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 9 PB.LenDelim) self = (\v -> self{lastName = PB.merge (lastName self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 2 PB.LenDelim) self = (\v -> self{password = PB.merge (password self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 7 PB.LenDelim) self = (\v -> self{phoneNumber = PB.merge (phoneNumber self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 5 PB.VarInt) self = (\v -> self{variabillMigrated = PB.merge (variabillMigrated self) v}) <$> PB.getBoolOpt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putEnumOpt (PB.WireTag 10 PB.LenDelim) (clientUserAgent self)
    PB.putInt64Opt (PB.WireTag 11 PB.VarInt) (clientVersion self)
    PB.putInt64Opt (PB.WireTag 4 PB.VarInt) (created self)
    PB.putStringOpt (PB.WireTag 1 PB.LenDelim) (email self)
    PB.putStringOpt (PB.WireTag 8 PB.LenDelim) (firstName self)
    PB.putBoolOpt (PB.WireTag 6 PB.VarInt) (hasAutogeneratedInsights self)
    PB.putBoolOpt (PB.WireTag 3 PB.VarInt) (hasBudget self)
    PB.putStringOpt (PB.WireTag 9 PB.LenDelim) (lastName self)
    PB.putStringOpt (PB.WireTag 2 PB.LenDelim) (password self)
    PB.putStringOpt (PB.WireTag 7 PB.LenDelim) (phoneNumber self)
    PB.putBoolOpt (PB.WireTag 5 PB.VarInt) (variabillMigrated self)


