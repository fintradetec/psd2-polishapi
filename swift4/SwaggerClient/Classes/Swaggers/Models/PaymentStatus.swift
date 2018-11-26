//
// PaymentStatus.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

/** Słownik statusów płatności */public enum PaymentStatus: String, Codable {
    case submitted = "submitted"
    case cancelled = "cancelled"
    case pending = "pending"
    case done = "done"
    case rejected = "rejected"
}