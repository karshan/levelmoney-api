-- Generated by protobuf-simple. DO NOT EDIT!
module FatLoginResponse.Transaction where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

data Transaction = Transaction
  { accountId :: !(PB.Maybe PB.Text)
  , aggregationTime :: !(PB.Maybe PB.Int64)
  , amount :: !(PB.Maybe PB.Int64)
  , categorization :: !(PB.Maybe PB.Text)
  , clearDate :: !(PB.Maybe PB.Int64)
  , insightIds :: !(PB.Seq PB.Text)
  , isPending :: !(PB.Maybe PB.Bool)
  , isTransfer :: !(PB.Maybe PB.Bool)
  , memoOnlyForTesting :: !(PB.Maybe PB.Text)
  , merchant :: !(PB.Maybe PB.Text)
  , originalAmount :: !(PB.Maybe PB.Int64)
  , originalMerchant :: !(PB.Maybe PB.Text)
  , originalTransactionTime :: !(PB.Maybe PB.Int64)
  , paycheckId :: !(PB.Maybe PB.Int64)
  , payeeNameOnlyForTesting :: !(PB.Maybe PB.Text)
  , possiblyIsBankFeeMaybe :: !(PB.Maybe PB.Bool)
  , previousTransactionId :: !(PB.Maybe PB.Text)
  , rawMerchant :: !(PB.Maybe PB.Text)
  , targetFundId :: !(PB.Maybe PB.Int64)
  , targetIsGoal :: !(PB.Maybe PB.Bool)
  , transactionId :: !(PB.Maybe PB.Text)
  , transactionTime :: !(PB.Maybe PB.Int64)
  , transactionTimeStringReadOnly :: !(PB.Maybe PB.Text)
  , transferPartnerId :: !(PB.Maybe PB.Text)
  , userJsonData :: !(PB.Maybe PB.Text)
  , userNote :: !(PB.Maybe PB.Text)
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Transaction where
  defaultVal = Transaction
    { accountId = PB.defaultVal
    , aggregationTime = PB.defaultVal
    , amount = PB.defaultVal
    , categorization = PB.defaultVal
    , clearDate = PB.defaultVal
    , insightIds = PB.defaultVal
    , isPending = PB.defaultVal
    , isTransfer = PB.defaultVal
    , memoOnlyForTesting = PB.defaultVal
    , merchant = PB.defaultVal
    , originalAmount = PB.defaultVal
    , originalMerchant = PB.defaultVal
    , originalTransactionTime = PB.defaultVal
    , paycheckId = PB.defaultVal
    , payeeNameOnlyForTesting = PB.defaultVal
    , possiblyIsBankFeeMaybe = PB.defaultVal
    , previousTransactionId = PB.defaultVal
    , rawMerchant = PB.defaultVal
    , targetFundId = PB.defaultVal
    , targetIsGoal = PB.defaultVal
    , transactionId = PB.defaultVal
    , transactionTime = PB.defaultVal
    , transactionTimeStringReadOnly = PB.defaultVal
    , transferPartnerId = PB.defaultVal
    , userJsonData = PB.defaultVal
    , userNote = PB.defaultVal
    }

instance PB.Mergeable Transaction where
  merge a b = Transaction
    { accountId = PB.merge (accountId a) (accountId b)
    , aggregationTime = PB.merge (aggregationTime a) (aggregationTime b)
    , amount = PB.merge (amount a) (amount b)
    , categorization = PB.merge (categorization a) (categorization b)
    , clearDate = PB.merge (clearDate a) (clearDate b)
    , insightIds = PB.merge (insightIds a) (insightIds b)
    , isPending = PB.merge (isPending a) (isPending b)
    , isTransfer = PB.merge (isTransfer a) (isTransfer b)
    , memoOnlyForTesting = PB.merge (memoOnlyForTesting a) (memoOnlyForTesting b)
    , merchant = PB.merge (merchant a) (merchant b)
    , originalAmount = PB.merge (originalAmount a) (originalAmount b)
    , originalMerchant = PB.merge (originalMerchant a) (originalMerchant b)
    , originalTransactionTime = PB.merge (originalTransactionTime a) (originalTransactionTime b)
    , paycheckId = PB.merge (paycheckId a) (paycheckId b)
    , payeeNameOnlyForTesting = PB.merge (payeeNameOnlyForTesting a) (payeeNameOnlyForTesting b)
    , possiblyIsBankFeeMaybe = PB.merge (possiblyIsBankFeeMaybe a) (possiblyIsBankFeeMaybe b)
    , previousTransactionId = PB.merge (previousTransactionId a) (previousTransactionId b)
    , rawMerchant = PB.merge (rawMerchant a) (rawMerchant b)
    , targetFundId = PB.merge (targetFundId a) (targetFundId b)
    , targetIsGoal = PB.merge (targetIsGoal a) (targetIsGoal b)
    , transactionId = PB.merge (transactionId a) (transactionId b)
    , transactionTime = PB.merge (transactionTime a) (transactionTime b)
    , transactionTimeStringReadOnly = PB.merge (transactionTimeStringReadOnly a) (transactionTimeStringReadOnly b)
    , transferPartnerId = PB.merge (transferPartnerId a) (transferPartnerId b)
    , userJsonData = PB.merge (userJsonData a) (userJsonData b)
    , userNote = PB.merge (userNote a) (userNote b)
    }

instance PB.Required Transaction where
  reqTags _ = PB.fromList []

instance PB.WireMessage Transaction where
  fieldToValue (PB.WireTag 2 PB.LenDelim) self = (\v -> self{accountId = PB.merge (accountId self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 23 PB.VarInt) self = (\v -> self{aggregationTime = PB.merge (aggregationTime self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 7 PB.VarInt) self = (\v -> self{amount = PB.merge (amount self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 21 PB.LenDelim) self = (\v -> self{categorization = PB.merge (categorization self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 26 PB.VarInt) self = (\v -> self{clearDate = PB.merge (clearDate self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 17 PB.LenDelim) self = (\v -> self{insightIds = PB.append (insightIds self) v}) <$> PB.getString
  fieldToValue (PB.WireTag 5 PB.VarInt) self = (\v -> self{isPending = PB.merge (isPending self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 14 PB.VarInt) self = (\v -> self{isTransfer = PB.merge (isTransfer self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 24 PB.LenDelim) self = (\v -> self{memoOnlyForTesting = PB.merge (memoOnlyForTesting self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 4 PB.LenDelim) self = (\v -> self{merchant = PB.merge (merchant self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 10 PB.VarInt) self = (\v -> self{originalAmount = PB.merge (originalAmount self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 9 PB.LenDelim) self = (\v -> self{originalMerchant = PB.merge (originalMerchant self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 11 PB.VarInt) self = (\v -> self{originalTransactionTime = PB.merge (originalTransactionTime self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 16 PB.VarInt) self = (\v -> self{paycheckId = PB.merge (paycheckId self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 25 PB.LenDelim) self = (\v -> self{payeeNameOnlyForTesting = PB.merge (payeeNameOnlyForTesting self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 13 PB.VarInt) self = (\v -> self{possiblyIsBankFeeMaybe = PB.merge (possiblyIsBankFeeMaybe self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 18 PB.LenDelim) self = (\v -> self{previousTransactionId = PB.merge (previousTransactionId self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 3 PB.LenDelim) self = (\v -> self{rawMerchant = PB.merge (rawMerchant self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 8 PB.VarInt) self = (\v -> self{targetFundId = PB.merge (targetFundId self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 12 PB.VarInt) self = (\v -> self{targetIsGoal = PB.merge (targetIsGoal self) v}) <$> PB.getBoolOpt
  fieldToValue (PB.WireTag 1 PB.LenDelim) self = (\v -> self{transactionId = PB.merge (transactionId self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 6 PB.VarInt) self = (\v -> self{transactionTime = PB.merge (transactionTime self) v}) <$> PB.getInt64Opt
  fieldToValue (PB.WireTag 22 PB.LenDelim) self = (\v -> self{transactionTimeStringReadOnly = PB.merge (transactionTimeStringReadOnly self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 15 PB.LenDelim) self = (\v -> self{transferPartnerId = PB.merge (transferPartnerId self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 20 PB.LenDelim) self = (\v -> self{userJsonData = PB.merge (userJsonData self) v}) <$> PB.getStringOpt
  fieldToValue (PB.WireTag 19 PB.LenDelim) self = (\v -> self{userNote = PB.merge (userNote self) v}) <$> PB.getStringOpt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putStringOpt (PB.WireTag 2 PB.LenDelim) (accountId self)
    PB.putInt64Opt (PB.WireTag 23 PB.VarInt) (aggregationTime self)
    PB.putInt64Opt (PB.WireTag 7 PB.VarInt) (amount self)
    PB.putStringOpt (PB.WireTag 21 PB.LenDelim) (categorization self)
    PB.putInt64Opt (PB.WireTag 26 PB.VarInt) (clearDate self)
    PB.putStringList (PB.WireTag 17 PB.LenDelim) (insightIds self)
    PB.putBoolOpt (PB.WireTag 5 PB.VarInt) (isPending self)
    PB.putBoolOpt (PB.WireTag 14 PB.VarInt) (isTransfer self)
    PB.putStringOpt (PB.WireTag 24 PB.LenDelim) (memoOnlyForTesting self)
    PB.putStringOpt (PB.WireTag 4 PB.LenDelim) (merchant self)
    PB.putInt64Opt (PB.WireTag 10 PB.VarInt) (originalAmount self)
    PB.putStringOpt (PB.WireTag 9 PB.LenDelim) (originalMerchant self)
    PB.putInt64Opt (PB.WireTag 11 PB.VarInt) (originalTransactionTime self)
    PB.putInt64Opt (PB.WireTag 16 PB.VarInt) (paycheckId self)
    PB.putStringOpt (PB.WireTag 25 PB.LenDelim) (payeeNameOnlyForTesting self)
    PB.putBoolOpt (PB.WireTag 13 PB.VarInt) (possiblyIsBankFeeMaybe self)
    PB.putStringOpt (PB.WireTag 18 PB.LenDelim) (previousTransactionId self)
    PB.putStringOpt (PB.WireTag 3 PB.LenDelim) (rawMerchant self)
    PB.putInt64Opt (PB.WireTag 8 PB.VarInt) (targetFundId self)
    PB.putBoolOpt (PB.WireTag 12 PB.VarInt) (targetIsGoal self)
    PB.putStringOpt (PB.WireTag 1 PB.LenDelim) (transactionId self)
    PB.putInt64Opt (PB.WireTag 6 PB.VarInt) (transactionTime self)
    PB.putStringOpt (PB.WireTag 22 PB.LenDelim) (transactionTimeStringReadOnly self)
    PB.putStringOpt (PB.WireTag 15 PB.LenDelim) (transferPartnerId self)
    PB.putStringOpt (PB.WireTag 20 PB.LenDelim) (userJsonData self)
    PB.putStringOpt (PB.WireTag 19 PB.LenDelim) (userNote self)


