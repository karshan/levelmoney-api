{-# LANGUAGE BangPatterns, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses #-}
{-# OPTIONS_GHC  -fno-warn-unused-imports #-}
module LevelMoney.Account (Account(..)) where
import Prelude ((+), (/))
import qualified Prelude as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified LevelMoney.AccountType as LevelMoney (AccountType)
import qualified LevelMoney.AggErrorInfo as LevelMoney (AggErrorInfo)

data Account = Account{account_id :: !(P'.Maybe P'.Utf8), account_name :: !(P'.Maybe P'.Utf8),
                       account_type :: !(P'.Maybe LevelMoney.AccountType), activating :: !(P'.Maybe P'.Bool),
                       active :: !(P'.Maybe P'.Bool), agg_error_info :: !(P'.Maybe LevelMoney.AggErrorInfo),
                       autosave_account_priority :: !(P'.Maybe P'.Int64), balance :: !(P'.Maybe P'.Int64),
                       bank_needs_pin :: !(P'.Maybe P'.Bool), can_be_autosave_funding_source :: !(P'.Maybe P'.Bool),
                       can_be_autosave_target :: !(P'.Maybe P'.Bool), does_not_support_pending :: !(P'.Maybe P'.Bool),
                       institution_id :: !(P'.Maybe P'.Int64), institution_login_id :: !(P'.Maybe P'.Utf8),
                       institution_name :: !(P'.Maybe P'.Utf8), is_autosave_source :: !(P'.Maybe P'.Bool),
                       is_autosave_target :: !(P'.Maybe P'.Bool), last_digits :: !(P'.Maybe P'.Utf8),
                       needs_mfa :: !(P'.Maybe P'.Bool), needs_reauth :: !(P'.Maybe P'.Bool),
                       no_reauth_before :: !(P'.Maybe P'.Int64), onboarding_finished :: !(P'.Maybe P'.Bool),
                       onboarding_started :: !(P'.Maybe P'.Bool), soft_delinked :: !(P'.Maybe P'.Bool),
                       unknown'field :: !(P'.UnknownField)}
             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.UnknownMessage Account where
  getUnknownField = unknown'field
  putUnknownField u'f msg = msg{unknown'field = u'f}

instance P'.Mergeable Account where
  mergeAppend
   (Account x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24 x'25)
   (Account y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10 y'11 y'12 y'13 y'14 y'15 y'16 y'17 y'18 y'19 y'20 y'21 y'22 y'23 y'24 y'25)
   = Account (P'.mergeAppend x'1 y'1) (P'.mergeAppend x'2 y'2) (P'.mergeAppend x'3 y'3) (P'.mergeAppend x'4 y'4)
      (P'.mergeAppend x'5 y'5)
      (P'.mergeAppend x'6 y'6)
      (P'.mergeAppend x'7 y'7)
      (P'.mergeAppend x'8 y'8)
      (P'.mergeAppend x'9 y'9)
      (P'.mergeAppend x'10 y'10)
      (P'.mergeAppend x'11 y'11)
      (P'.mergeAppend x'12 y'12)
      (P'.mergeAppend x'13 y'13)
      (P'.mergeAppend x'14 y'14)
      (P'.mergeAppend x'15 y'15)
      (P'.mergeAppend x'16 y'16)
      (P'.mergeAppend x'17 y'17)
      (P'.mergeAppend x'18 y'18)
      (P'.mergeAppend x'19 y'19)
      (P'.mergeAppend x'20 y'20)
      (P'.mergeAppend x'21 y'21)
      (P'.mergeAppend x'22 y'22)
      (P'.mergeAppend x'23 y'23)
      (P'.mergeAppend x'24 y'24)
      (P'.mergeAppend x'25 y'25)

instance P'.Default Account where
  defaultValue
   = Account P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire Account where
  wireSize ft'
   self'@(Account x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 14 x'3 + P'.wireSizeOpt 1 8 x'4 +
             P'.wireSizeOpt 1 8 x'5
             + P'.wireSizeOpt 2 11 x'6
             + P'.wireSizeOpt 2 3 x'7
             + P'.wireSizeOpt 1 3 x'8
             + P'.wireSizeOpt 2 8 x'9
             + P'.wireSizeOpt 2 8 x'10
             + P'.wireSizeOpt 2 8 x'11
             + P'.wireSizeOpt 2 8 x'12
             + P'.wireSizeOpt 1 3 x'13
             + P'.wireSizeOpt 2 9 x'14
             + P'.wireSizeOpt 1 9 x'15
             + P'.wireSizeOpt 2 8 x'16
             + P'.wireSizeOpt 2 8 x'17
             + P'.wireSizeOpt 1 9 x'18
             + P'.wireSizeOpt 1 8 x'19
             + P'.wireSizeOpt 1 8 x'20
             + P'.wireSizeOpt 1 3 x'21
             + P'.wireSizeOpt 1 8 x'22
             + P'.wireSizeOpt 1 8 x'23
             + P'.wireSizeOpt 2 8 x'24
             + P'.wireSizeUnknownField x'25)
  wirePut ft'
   self'@(Account x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10 x'11 x'12 x'13 x'14 x'15 x'16 x'17 x'18 x'19 x'20 x'21 x'22 x'23 x'24
           x'25)
   = case ft' of
       10 -> put'Fields
       11 -> do
               P'.putSize (P'.wireSize 10 self')
               put'Fields
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = do
             P'.wirePutOpt 10 9 x'1
             P'.wirePutOpt 16 3 x'13
             P'.wirePutOpt 26 9 x'15
             P'.wirePutOpt 32 8 x'5
             P'.wirePutOpt 42 9 x'2
             P'.wirePutOpt 48 3 x'8
             P'.wirePutOpt 56 14 x'3
             P'.wirePutOpt 66 9 x'18
             P'.wirePutOpt 72 8 x'19
             P'.wirePutOpt 80 8 x'20
             P'.wirePutOpt 88 3 x'21
             P'.wirePutOpt 104 8 x'23
             P'.wirePutOpt 112 8 x'22
             P'.wirePutOpt 120 8 x'4
             P'.wirePutOpt 128 8 x'24
             P'.wirePutOpt 136 8 x'9
             P'.wirePutOpt 144 8 x'12
             P'.wirePutOpt 154 9 x'14
             P'.wirePutOpt 162 11 x'6
             P'.wirePutOpt 168 8 x'16
             P'.wirePutOpt 176 8 x'17
             P'.wirePutOpt 184 8 x'11
             P'.wirePutOpt 192 8 x'10
             P'.wirePutOpt 200 3 x'7
             P'.wirePutUnknownField x'25
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{account_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{account_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{account_type = Prelude'.Just new'Field}) (P'.wireGet 14)
             120 -> Prelude'.fmap (\ !new'Field -> old'Self{activating = Prelude'.Just new'Field}) (P'.wireGet 8)
             32 -> Prelude'.fmap (\ !new'Field -> old'Self{active = Prelude'.Just new'Field}) (P'.wireGet 8)
             162 -> Prelude'.fmap
                     (\ !new'Field -> old'Self{agg_error_info = P'.mergeAppend (agg_error_info old'Self) (Prelude'.Just new'Field)})
                     (P'.wireGet 11)
             200 -> Prelude'.fmap (\ !new'Field -> old'Self{autosave_account_priority = Prelude'.Just new'Field}) (P'.wireGet 3)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{balance = Prelude'.Just new'Field}) (P'.wireGet 3)
             136 -> Prelude'.fmap (\ !new'Field -> old'Self{bank_needs_pin = Prelude'.Just new'Field}) (P'.wireGet 8)
             192 -> Prelude'.fmap (\ !new'Field -> old'Self{can_be_autosave_funding_source = Prelude'.Just new'Field})
                     (P'.wireGet 8)
             184 -> Prelude'.fmap (\ !new'Field -> old'Self{can_be_autosave_target = Prelude'.Just new'Field}) (P'.wireGet 8)
             144 -> Prelude'.fmap (\ !new'Field -> old'Self{does_not_support_pending = Prelude'.Just new'Field}) (P'.wireGet 8)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{institution_id = Prelude'.Just new'Field}) (P'.wireGet 3)
             154 -> Prelude'.fmap (\ !new'Field -> old'Self{institution_login_id = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{institution_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             168 -> Prelude'.fmap (\ !new'Field -> old'Self{is_autosave_source = Prelude'.Just new'Field}) (P'.wireGet 8)
             176 -> Prelude'.fmap (\ !new'Field -> old'Self{is_autosave_target = Prelude'.Just new'Field}) (P'.wireGet 8)
             66 -> Prelude'.fmap (\ !new'Field -> old'Self{last_digits = Prelude'.Just new'Field}) (P'.wireGet 9)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{needs_mfa = Prelude'.Just new'Field}) (P'.wireGet 8)
             80 -> Prelude'.fmap (\ !new'Field -> old'Self{needs_reauth = Prelude'.Just new'Field}) (P'.wireGet 8)
             88 -> Prelude'.fmap (\ !new'Field -> old'Self{no_reauth_before = Prelude'.Just new'Field}) (P'.wireGet 3)
             112 -> Prelude'.fmap (\ !new'Field -> old'Self{onboarding_finished = Prelude'.Just new'Field}) (P'.wireGet 8)
             104 -> Prelude'.fmap (\ !new'Field -> old'Self{onboarding_started = Prelude'.Just new'Field}) (P'.wireGet 8)
             128 -> Prelude'.fmap (\ !new'Field -> old'Self{soft_delinked = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Account) Account where
  getVal m' f' = f' m'

instance P'.GPB Account

instance P'.ReflectDescriptor Account where
  getMessageInfo _
   = P'.GetMessageInfo (P'.fromDistinctAscList [])
      (P'.fromDistinctAscList
        [10, 16, 26, 32, 42, 48, 56, 66, 72, 80, 88, 104, 112, 120, 128, 136, 144, 154, 162, 168, 176, 184, 192, 200])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".LevelMoney.Account\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"Account\"}, descFilePath = [\"LevelMoney\",\"Account.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.account_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"account_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.account_name\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"account_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.account_type\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"account_type\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.AccountType\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"AccountType\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.activating\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"activating\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 15}, wireTag = WireTag {getWireTag = 120}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.active\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"active\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.agg_error_info\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"agg_error_info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 20}, wireTag = WireTag {getWireTag = 162}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".LevelMoney.AggErrorInfo\", haskellPrefix = [], parentModule = [MName \"LevelMoney\"], baseName = MName \"AggErrorInfo\"}), hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.autosave_account_priority\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"autosave_account_priority\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 25}, wireTag = WireTag {getWireTag = 200}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.balance\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"balance\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.bank_needs_pin\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"bank_needs_pin\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 17}, wireTag = WireTag {getWireTag = 136}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.can_be_autosave_funding_source\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"can_be_autosave_funding_source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 24}, wireTag = WireTag {getWireTag = 192}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.can_be_autosave_target\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"can_be_autosave_target\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 23}, wireTag = WireTag {getWireTag = 184}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.does_not_support_pending\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"does_not_support_pending\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 18}, wireTag = WireTag {getWireTag = 144}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.institution_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"institution_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.institution_login_id\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"institution_login_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 19}, wireTag = WireTag {getWireTag = 154}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.institution_name\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"institution_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.is_autosave_source\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"is_autosave_source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 21}, wireTag = WireTag {getWireTag = 168}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.is_autosave_target\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"is_autosave_target\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 22}, wireTag = WireTag {getWireTag = 176}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.last_digits\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"last_digits\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.needs_mfa\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"needs_mfa\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.needs_reauth\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"needs_reauth\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 80}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.no_reauth_before\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"no_reauth_before\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 88}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.onboarding_finished\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"onboarding_finished\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 14}, wireTag = WireTag {getWireTag = 112}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.onboarding_started\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"onboarding_started\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 13}, wireTag = WireTag {getWireTag = 104}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".LevelMoney.Account.soft_delinked\", haskellPrefix' = [], parentModule' = [MName \"LevelMoney\",MName \"Account\"], baseName' = FName \"soft_delinked\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 16}, wireTag = WireTag {getWireTag = 128}, packedTag = Nothing, wireTagLength = 2, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = True, lazyFields = False, makeLenses = False}"

instance P'.TextType Account where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Account where
  textPut msg
   = do
       P'.tellT "account_id" (account_id msg)
       P'.tellT "account_name" (account_name msg)
       P'.tellT "account_type" (account_type msg)
       P'.tellT "activating" (activating msg)
       P'.tellT "active" (active msg)
       P'.tellT "agg_error_info" (agg_error_info msg)
       P'.tellT "autosave_account_priority" (autosave_account_priority msg)
       P'.tellT "balance" (balance msg)
       P'.tellT "bank_needs_pin" (bank_needs_pin msg)
       P'.tellT "can_be_autosave_funding_source" (can_be_autosave_funding_source msg)
       P'.tellT "can_be_autosave_target" (can_be_autosave_target msg)
       P'.tellT "does_not_support_pending" (does_not_support_pending msg)
       P'.tellT "institution_id" (institution_id msg)
       P'.tellT "institution_login_id" (institution_login_id msg)
       P'.tellT "institution_name" (institution_name msg)
       P'.tellT "is_autosave_source" (is_autosave_source msg)
       P'.tellT "is_autosave_target" (is_autosave_target msg)
       P'.tellT "last_digits" (last_digits msg)
       P'.tellT "needs_mfa" (needs_mfa msg)
       P'.tellT "needs_reauth" (needs_reauth msg)
       P'.tellT "no_reauth_before" (no_reauth_before msg)
       P'.tellT "onboarding_finished" (onboarding_finished msg)
       P'.tellT "onboarding_started" (onboarding_started msg)
       P'.tellT "soft_delinked" (soft_delinked msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'account_id, parse'account_name, parse'account_type, parse'activating, parse'active, parse'agg_error_info,
                   parse'autosave_account_priority, parse'balance, parse'bank_needs_pin, parse'can_be_autosave_funding_source,
                   parse'can_be_autosave_target, parse'does_not_support_pending, parse'institution_id, parse'institution_login_id,
                   parse'institution_name, parse'is_autosave_source, parse'is_autosave_target, parse'last_digits, parse'needs_mfa,
                   parse'needs_reauth, parse'no_reauth_before, parse'onboarding_finished, parse'onboarding_started,
                   parse'soft_delinked])
                P'.spaces
       Prelude'.return (Prelude'.foldl (\ v f -> f v) P'.defaultValue mods)
    where
        parse'account_id
         = P'.try
            (do
               v <- P'.getT "account_id"
               Prelude'.return (\ o -> o{account_id = v}))
        parse'account_name
         = P'.try
            (do
               v <- P'.getT "account_name"
               Prelude'.return (\ o -> o{account_name = v}))
        parse'account_type
         = P'.try
            (do
               v <- P'.getT "account_type"
               Prelude'.return (\ o -> o{account_type = v}))
        parse'activating
         = P'.try
            (do
               v <- P'.getT "activating"
               Prelude'.return (\ o -> o{activating = v}))
        parse'active
         = P'.try
            (do
               v <- P'.getT "active"
               Prelude'.return (\ o -> o{active = v}))
        parse'agg_error_info
         = P'.try
            (do
               v <- P'.getT "agg_error_info"
               Prelude'.return (\ o -> o{agg_error_info = v}))
        parse'autosave_account_priority
         = P'.try
            (do
               v <- P'.getT "autosave_account_priority"
               Prelude'.return (\ o -> o{autosave_account_priority = v}))
        parse'balance
         = P'.try
            (do
               v <- P'.getT "balance"
               Prelude'.return (\ o -> o{balance = v}))
        parse'bank_needs_pin
         = P'.try
            (do
               v <- P'.getT "bank_needs_pin"
               Prelude'.return (\ o -> o{bank_needs_pin = v}))
        parse'can_be_autosave_funding_source
         = P'.try
            (do
               v <- P'.getT "can_be_autosave_funding_source"
               Prelude'.return (\ o -> o{can_be_autosave_funding_source = v}))
        parse'can_be_autosave_target
         = P'.try
            (do
               v <- P'.getT "can_be_autosave_target"
               Prelude'.return (\ o -> o{can_be_autosave_target = v}))
        parse'does_not_support_pending
         = P'.try
            (do
               v <- P'.getT "does_not_support_pending"
               Prelude'.return (\ o -> o{does_not_support_pending = v}))
        parse'institution_id
         = P'.try
            (do
               v <- P'.getT "institution_id"
               Prelude'.return (\ o -> o{institution_id = v}))
        parse'institution_login_id
         = P'.try
            (do
               v <- P'.getT "institution_login_id"
               Prelude'.return (\ o -> o{institution_login_id = v}))
        parse'institution_name
         = P'.try
            (do
               v <- P'.getT "institution_name"
               Prelude'.return (\ o -> o{institution_name = v}))
        parse'is_autosave_source
         = P'.try
            (do
               v <- P'.getT "is_autosave_source"
               Prelude'.return (\ o -> o{is_autosave_source = v}))
        parse'is_autosave_target
         = P'.try
            (do
               v <- P'.getT "is_autosave_target"
               Prelude'.return (\ o -> o{is_autosave_target = v}))
        parse'last_digits
         = P'.try
            (do
               v <- P'.getT "last_digits"
               Prelude'.return (\ o -> o{last_digits = v}))
        parse'needs_mfa
         = P'.try
            (do
               v <- P'.getT "needs_mfa"
               Prelude'.return (\ o -> o{needs_mfa = v}))
        parse'needs_reauth
         = P'.try
            (do
               v <- P'.getT "needs_reauth"
               Prelude'.return (\ o -> o{needs_reauth = v}))
        parse'no_reauth_before
         = P'.try
            (do
               v <- P'.getT "no_reauth_before"
               Prelude'.return (\ o -> o{no_reauth_before = v}))
        parse'onboarding_finished
         = P'.try
            (do
               v <- P'.getT "onboarding_finished"
               Prelude'.return (\ o -> o{onboarding_finished = v}))
        parse'onboarding_started
         = P'.try
            (do
               v <- P'.getT "onboarding_started"
               Prelude'.return (\ o -> o{onboarding_started = v}))
        parse'soft_delinked
         = P'.try
            (do
               v <- P'.getT "soft_delinked"
               Prelude'.return (\ o -> o{soft_delinked = v}))