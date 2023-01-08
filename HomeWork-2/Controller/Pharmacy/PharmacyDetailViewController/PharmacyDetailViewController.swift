//
//  PharmacyDetailViewController.swift
//  HomeWork-2
//
//  Created by rasit on 7.01.2023.
//

import UIKit
import MapKit
class PharmacyDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak fileprivate var mapView: MKMapView!
    @IBOutlet weak fileprivate var adressLabel: UILabel!
    @IBOutlet weak fileprivate var districtLabel: UILabel!
    @IBOutlet weak fileprivate var phoneNumberLabel: UILabel!

    // MARK: - Variables
    var pharmacyDetail: PharmacyResult?
    var latitude: String = ""
    var longitude: String = ""
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addCenterLocation()
        addAnnotion()
        setUI()
    }
    
    // MARK: - UI
    func setUI() {
        adressLabel.text = pharmacyDetail?.address ?? ""
        districtLabel.text = pharmacyDetail?.dist ?? ""
        phoneNumberLabel.text = pharmacyDetail?.phone?.applyPatternOnNumbers(pattern: "(###) ### ## ##", replacementCharacter: "#")
    }
    
    // MARK: - Map Kit
    func addCenterLocation() {
        let location = pharmacyDetail?.loc?.split(separator: ",")
        if let location = location {
            latitude = String(location[0])
            longitude = String(location[1])
        }
        let initialLocation = CLLocation(latitude: Double(latitude) ?? 0.0, longitude: Double(longitude) ?? 0.0)
        mapView.centerToLocation(initialLocation)
    }
    
    func addAnnotion() {
        let annotionModel = AnnotionModel(
            title: pharmacyDetail?.name,
          coordinate: CLLocationCoordinate2D(latitude: Double(latitude) ?? 0.0, longitude: Double(longitude) ?? 0.0))
        mapView.addAnnotation(annotionModel)
    }
}

