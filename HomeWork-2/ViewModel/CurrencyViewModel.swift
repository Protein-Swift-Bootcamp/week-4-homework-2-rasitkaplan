//
//  CurrencyViewModel.swift
//  HomeWork-2
//
//  Created by rasit on 5.01.2023.
//

import Foundation

protocol GetCurrency: AnyObject {
    func getCurrency(currency: Currency)
}
class CurrencyViewModel {
    weak var delegate: GetCurrency?

    func getCurrencyList() {
        NetworkManager.request(type: Currency.self, url: NetworkHelper.shared.currenctURL, method: .get) { [weak self] response in
            guard let self = self else { return }
            switch response {
            case .success(let currency):
                self.delegate?.getCurrency(currency: currency)
            case .failure(let error):
                print(error)
            }
        }
    }
}
