//
//  CurrencyModel.swift
//  HomeWork-2
//
//  Created by rasit on 5.01.2023.
//

import Foundation

struct Currency: Codable {
    let success: Bool?
    let result: CurrencyResult?
}

// MARK: - Result
struct CurrencyResult: Codable {
    let base, lastupdate: String?
    let data: [CurrencyData]?
}

// MARK: - Datum
struct CurrencyData: Codable {
    let code, name: String?
    let rate: Double?
    let calculatedstr: String?
    let calculated: Double?
}
