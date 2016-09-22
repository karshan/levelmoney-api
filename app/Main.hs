module Main where

import LevelMoney.GetCacheContentsRequest
import LevelMoney.GetCacheContentsResponse
import LevelMoney.FatLoginResponse
import Text.ProtocolBuffers.WireMessage
import qualified Data.ByteString.Lazy as LBS

main :: IO ()
main = do
    input <- LBS.readFile "fat-login-response"
    print (messageGet input :: Either String (FatLoginResponse, LBS.ByteString))
