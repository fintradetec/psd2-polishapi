//
// Payor.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

/** Klasa informacji o płatniku do US / Tax Payor Information Class */
public struct Payor: Codable {

    public enum PayorIdType: String, Codable { 
        case n = "N"
        case p = "P"
        case r = "R"
        case _1 = "1"
        case _2 = "2"
        case _3 = "3"
    }
    /** Identyfikator płatnika / Payor ID */
    public var payorId: String
    /** Typ identyfikatora płatnika / Payor ID type */
    public var payorIdType: PayorIdType
    public init(payorId: String, payorIdType: PayorIdType) { 
        self.payorId = payorId
        self.payorIdType = payorIdType
    }

}
