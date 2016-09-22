-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.Error where

import Prelude ()
import qualified Data.ProtoBufInt as PB

data Error = NoError | NoToken | TokenExpired | InsufficientTokenSensitivity | NoApiToken | BadApiToken | IllegalPath | RequestSchemaMismatch | StrictModeFailure | LockFailure | NotImplementedYet
  deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Error where
  defaultVal = NoError

instance PB.Mergeable Error where

instance PB.WireEnum Error where
  intToEnum 0 = NoError
  intToEnum 300 = NoToken
  intToEnum 301 = TokenExpired
  intToEnum 302 = InsufficientTokenSensitivity
  intToEnum 303 = NoApiToken
  intToEnum 304 = BadApiToken
  intToEnum 305 = IllegalPath
  intToEnum 306 = RequestSchemaMismatch
  intToEnum 307 = StrictModeFailure
  intToEnum 500 = LockFailure
  intToEnum 700 = NotImplementedYet
  intToEnum _ = PB.defaultVal

  enumToInt NoError = 0
  enumToInt NoToken = 300
  enumToInt TokenExpired = 301
  enumToInt InsufficientTokenSensitivity = 302
  enumToInt NoApiToken = 303
  enumToInt BadApiToken = 304
  enumToInt IllegalPath = 305
  enumToInt RequestSchemaMismatch = 306
  enumToInt StrictModeFailure = 307
  enumToInt LockFailure = 500
  enumToInt NotImplementedYet = 700


