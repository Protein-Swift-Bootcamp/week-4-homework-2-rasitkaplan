//
//  GasolineViewModel.swift
//  HomeWork-2
//
//  Created by rasit on 5.01.2023.
//

import Foundation


protocol GetWeather: AnyObject {
    func getWeather(weather: WeatherModel)
}
class WeatherViewModel {
    weak var delegate: GetWeather?

    func getWeatherList() {
        NetworkManager.request(type: WeatherModel.self, url: NetworkHelper.shared.weatherURL, method: .get) { [weak self] response in
            guard let self = self else { return }
            switch response {
            case .success(let weather):
                self.delegate?.getWeather(weather: weather)
            case .failure(let error):
                print(error)
            }
        }
    }
}
