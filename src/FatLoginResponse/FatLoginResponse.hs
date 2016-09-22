-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.FatLoginResponse where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB
import qualified FatLoginResponse.Error
import qualified FatLoginResponse.Events
import qualified FatLoginResponse.FatLoginError
import qualified FatLoginResponse.CacheContents
import qualified FatLoginResponse.User

data FatLoginResponse = FatLoginResponse
  { error :: !(PB.Maybe FatLoginResponse.Error.Error)
  , events :: !(PB.Maybe FatLoginResponse.Events.Events)
  , error2 :: !(PB.Maybe FatLoginResponse.FatLoginError.FatLoginError)
  , uid :: !(PB.Maybe PB.Int64)
  , token :: !(PB.Maybe PB.Text)
  , cacheContents :: !(PB.Maybe FatLoginResponse.CacheContents.CacheContents)
  , user :: !(PB.Maybe FatLoginResponse.User.User)
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default FatLoginResponse where
  defaultVal = FatLoginResponse
    { error = PB.defaultVal
    , events = PB.defaultVal
    , error2 = PB.defaultVal
    , uid = PB.defaultVal
    , token = PB.defaultVal
    , cacheContents = PB.defaultVal
    , user = PB.defaultVal
    }

instance PB.Mergeable FatLoginResponse where
  merge a b = FatLoginResponse
    { error = PB.merge (error a) (error b)
    , events = PB.merge (events a) (events b)
    , error2 = PB.merge (error2 a) (error2 b)
    , uid = PB.merge (uid a) (uid b)
    , token = PB.merge (token a) (token b)
    , cacheContents = PB.merge (cacheContents a) (cacheContents b)
    , user = PB.merge (user a) (user b)
    }

instance PB.Required FatLoginResponse where
  reqTags _ = PB.fromList []

instance PB.WireMessage FatLoginResponse where
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{error = PB.merge (error self) v}) <$> PB.getEnumOpt
  fieldToValue (PB.WireTag 2 PB.LenDelim) self = (\v -> self{events = PB.merge (events self) v}) <$> PB.getMessageOpt
  fieldToValue (PB.WireTag 3 PB.LenDelim) self = (\v -> self{error2 = PB.merge (error2 self) v}) <$> PB.getEnumOpt
  fieldToValue (PB.WireTag 10 PB.VarInt) self = (\v -> self{uid = PB.merge (uid self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 11 PB.LenDelim) self = (\v -> self{token = PB.merge (token self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 12 PB.LenDelim) self = (\v -> self{cacheContents = PB.merge (cacheContents self) v}) <$> PB.getMessageOpt
  fieldToValue (PB.WireTag 13 PB.LenDelim) self = (\v -> self{user = PB.merge (user self) v}) <$> PB.getMessageOpt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putEnumOpt (PB.WireTag 1 PB.LenDelim) (error self)
    PB.putMessageOpt (PB.WireTag 2 PB.LenDelim) (events self)
    PB.putEnumOpt (PB.WireTag 3 PB.LenDelim) (error2 self)
    PB.putInt64Opt (PB.WireTag 10 PB.VarInt) (uid self)
    PB.putStringOpt (PB.WireTag 11 PB.LenDelim) (token self)
    PB.putMessageOpt (PB.WireTag 12 PB.LenDelim) (cacheContents self)
    PB.putMessageOpt (PB.WireTag 13 PB.LenDelim) (user self)

