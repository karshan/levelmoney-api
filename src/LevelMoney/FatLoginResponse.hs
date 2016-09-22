{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.FatLoginResponse (FatLoginResponse(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.CacheContents as LevelMoney (CacheContents)
import qualified LevelMoney.Error as LevelMoney (Error)
import qualified LevelMoney.Events as LevelMoney (Events)
import qualified LevelMoney.FatLoginError as LevelMoney (FatLoginError)
import qualified LevelMoney.User as LevelMoney (User)

data FatLoginResponse = FatLoginResponse{error :: !(P'.Maybe LevelMoney.Error), events :: !(P'.Maybe LevelMoney.Events),
                                         error2 :: !(P'.Maybe LevelMoney.FatLoginError), uid :: !(P'.Maybe P'.Int64),
                                         token :: !(P'.Maybe P'.Utf8), cache_contents :: !(P'.Maybe LevelMoney.CacheContents),
                                         user :: !(P'.Maybe LevelMoney.User), unknown'field :: !(P'.UnknownField)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage FatLoginResponse where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable FatLoginResponse where
  mergeAppend (FatLoginResponse x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8) (FatLoginResponse y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8)
   = FatLoginResponse (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)

instance P'.Default FatLoginResponse where
  defaultValue
   = FatLoginResponse P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire FatLoginResponse where
  wireSize ft' self'@(FatLoginResponse x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 14 x'3 + P'.wireSizeOpt 1 3 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeOpt 1 11 x'7
             + P'.wireSizeUnknownField x'8)
  wirePut ft' self'@(FatLoginResponse x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 8 14 x'1
             P'.wirePutOpt 18 11 x'2
             P'.wirePutOpt 24 14 x'3
             P'.wirePutOpt 80 3 x'4
             P'.wirePutOpt 90 9 x'5
             P'.wirePutOpt 98 11 x'6
             P'.wirePutOpt 106 11 x'7
             P'.wirePutUnknownField x'8
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{error = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{events = P'.mergeAppend (events old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{error2 = Prelude'.Just new'Field}) (P'.wireGet 14)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{uid = Prelude'.Just new'Field}) (P'.wireGet 3)
             90 -> Prelude'.fmap (\ !new'Field -> old'Self{token = Prelude'.Just new'Field}) (P'.wireGet 9)
             98 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{cache_contents = P'.mergeAppend (cache_contents old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             106 -> Prelude'.fmap (\ !new'Field -> old'Self{user = P'.mergeAppend (user old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> FatLoginResponse) FatLoginResponse where
  getVal m' f' = f' m'

instance P'.GPB FatLoginResponse

instance P'.ReflectDescriptor FatLoginResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 24, 80, 90, 98, 106])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.FatLoginResponse\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"FatLoginResponse\"}, descFilePath = [\"LevelMoney\",\"FatLoginResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.FatLoginResponse.error\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"FatLoginResponse\"], baseName' = FName \"error\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Error\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Error\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.FatLoginResponse.events\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"FatLoginResponse\"], baseName' = FName \"events\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.Events\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Events\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.FatLoginResponse.error2\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"FatLoginResponse\"], baseName' = FName \"error2\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.FatLoginError\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"FatLoginError\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.FatLoginResponse.uid\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"FatLoginResponse\"], baseName' = FName \"uid\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.FatLoginResponse.token\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"FatLoginResponse\"], baseName' = FName \"token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.FatLoginResponse.cache_contents\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"FatLoginResponse\"], baseName' = FName \"cache_contents\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.CacheContents\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"CacheContents\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.FatLoginResponse.user\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"FatLoginResponse\"], baseName' = FName \"user\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 106}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.User\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"User\"}), hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType FatLoginResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg FatLoginResponse where
  textPut msg
   = do
       P'.tellT "error" (error msg)
       P'.tellT "events" (events msg)
       P'.tellT "error2" (error2 msg)
       P'.tellT "uid" (uid msg)
       P'.tellT "token" (token msg)
       P'.tellT "cache_contents" (cache_contents msg)
       P'.tellT "user" (user msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'error, parse'events, parse'error2, parse'uid, parse'token, parse'cache_contents, parse'user])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'error
         = P'.try
            (do
               v <- P'.getT "error"
               Prelude'.return (\ o -> o{error = v}))
        parse'events
         = P'.try
            (do
               v <- P'.getT "events"
               Prelude'.return (\ o -> o{events = v}))
        parse'error2
         = P'.try
            (do
               v <- P'.getT "error2"
               Prelude'.return (\ o -> o{error2 = v}))
        parse'uid
         = P'.try
            (do
               v <- P'.getT "uid"
               Prelude'.return (\ o -> o{uid = v}))
        parse'token
         = P'.try
            (do
               v <- P'.getT "token"
               Prelude'.return (\ o -> o{token = v}))
        parse'cache_contents
         = P'.try
            (do
               v <- P'.getT "cache_contents"
               Prelude'.return (\ o -> o{cache_contents = v}))
        parse'user
         = P'.try
            (do
               v <- P'.getT "user"
               Prelude'.return (\ o -> o{user = v}))