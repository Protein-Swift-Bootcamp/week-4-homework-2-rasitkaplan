//
//  PharmacyModel.swift
//  HomeWork-2
//
//  Created by rasit on 5.01.2023.
//

import Foundation

// MARK: - Pharmacy
struct Pharmacy: Codable {
    let success: Bool?
    let result: [PharmacyResult]?
}

// MARK: - Result
struct PharmacyResult: Codable {
    let name, dist, address, phone: String?
    let loc: String?
}
