# This code was automatically generated using xdrgen
# DO NOT EDIT or your changes may be overwritten

require 'xdr'

# === xdr source ============================================================
#
#   union OperationResult switch (OperationResultCode code)
#   {
#   case opINNER:
#       union switch (OperationType type)
#       {
#       case CREATE_ACCOUNT:
#           CreateAccountResult createAccountResult;
#       case PAYMENT:
#           PaymentResult paymentResult;
#       case PATH_PAYMENT:
#           PathPaymentResult pathPaymentResult;
#       case MANAGE_SELL_OFFER:
#           ManageSellOfferResult manageSellOfferResult;
#       case CREATE_PASSIVE_SELL_OFFER:
#           ManageSellOfferResult createPassiveSellOfferResult;
#       case SET_OPTIONS:
#           SetOptionsResult setOptionsResult;
#       case CHANGE_TRUST:
#           ChangeTrustResult changeTrustResult;
#       case ALLOW_TRUST:
#           AllowTrustResult allowTrustResult;
#       case ACCOUNT_MERGE:
#           AccountMergeResult accountMergeResult;
#       case INFLATION:
#           InflationResult inflationResult;
#       case MANAGE_DATA:
#           ManageDataResult manageDataResult;
#       case BUMP_SEQUENCE:
#           BumpSequenceResult bumpSeqResult;
#       case MANAGE_BUY_OFFER:
#   	ManageBuyOfferResult manageBuyOfferResult;
#       }
#       tr;
#   default:
#       void;
#   };
#
# ===========================================================================
module Stellar
  class OperationResult < XDR::Union
    include XDR::Namespace

    autoload :Tr

    switch_on OperationResultCode, :code

    switch :op_inner, :tr
    switch :default

    attribute :tr, Tr
  end
end
