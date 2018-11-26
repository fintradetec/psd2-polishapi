//
// PaymentTaxRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

/** Klasa zlecenia przelewu podatkowego / Tax Transfer Request Class */
public struct PaymentTaxRequest: Codable {

    public enum DeliveryMode: String, Codable { 
        case expressD0 = "ExpressD0"
        case standardD1 = "StandardD1"
    }    public enum System: String, Codable { 
        case elixir = "Elixir"
        case expressElixir = "ExpressElixir"
    }
    public var requestHeader: RequestHeaderCallback

    public var recipient: RecipientPISTax

    public var sender: SenderPIS

    public var transferData: TransferDataCurrencyRequired

    public var usInfo: TransactionInfoTax?

    /** ID transakcji nadany przez TPP / Transaction ID (TPP) */
    public var tppTransactionId: String
    /** Tryb pilności / Urgency mode */
    public var deliveryMode: DeliveryMode
    /** Droga jaką przelew ma być rozliczony / The way the transfer should be settled */
    public var system: System?

    /** Czy założyć blokadę (w przypadku np. zlecenia przelewu w dniu wolnym) / Indicates if payment should be holded */
    public var hold: Bool?
    public init(requestHeader: RequestHeaderCallback, recipient: RecipientPISTax, sender: SenderPIS, transferData: TransferDataCurrencyRequired, usInfo: TransactionInfoTax?, tppTransactionId: String, deliveryMode: DeliveryMode, system: System?, hold: Bool?) { 
        self.requestHeader = requestHeader
        self.recipient = recipient
        self.sender = sender
        self.transferData = transferData
        self.usInfo = usInfo
        self.tppTransactionId = tppTransactionId
        self.deliveryMode = deliveryMode
        self.system = system
        self.hold = hold
    }

}
