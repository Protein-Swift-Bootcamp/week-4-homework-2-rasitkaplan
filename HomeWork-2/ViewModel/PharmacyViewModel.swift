//
//  PharmacyViewModel.swift
//  HomeWork-2
//
//  Created by rasit on 5.01.2023.
//

import Foundation

protocol getPharmacy: AnyObject {
    func getPharmacy(pharmacy: Pharmacy)
}
class PharmacyViewModel {
    weak var delegate: getPharmacy?

    func getPharmacyList() {
        NetworkManager.request(type: Pharmacy.self, url: NetworkHelper.shared.pharmacyURL, method: .get) { [weak self] response in
            guard let self = self else { return }
            switch response {
            case .success(let pharmacy):
                self.delegate?.getPharmacy(pharmacy: pharmacy)
            case .failure(let error):
                print(error)
            }
        }
    }
}
