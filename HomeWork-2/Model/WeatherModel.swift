//
//  GasolineModel.swift
//  HomeWork-2
//
//  Created by rasit on 5.01.2023.
//

import Foundation

// MARK: - Weather
struct WeatherModel: Codable {
    let result: [Weather]?
}

// MARK: - Result
struct Weather: Codable {
    let date, day: String?
    let icon: String?
    let description, status, degree, min: String?
    let max, night, humidity: String?
}
