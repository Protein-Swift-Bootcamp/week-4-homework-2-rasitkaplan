//
//  NetworkHelper.swift
//  HomeWork-2
//
//  Created by rasit on 4.01.2023.
//

import Foundation

enum HTTPMethods: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

enum ErrorTypes: String, Error {
    case invalidData = "Invalid Data"
    case invalidURL = "Invalid URL"
    case unknownError = "An error unknown"
}

class NetworkHelper {
    
    static let shared = NetworkHelper()

    let pharmacyURL = "https://api.collectapi.com/health/dutyPharmacy?il=Eskisehir"
    let weatherURL = "https://api.collectapi.com/weather/getWeather?data.lang=en&data.city=eskisehir"
    let currenctURL = "https://api.collectapi.com/economy/currencyToAll?int=10&base=USD"
}
