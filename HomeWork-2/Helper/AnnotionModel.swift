//
//  AnnotionModel.swift
//  HomeWork-2
//
//  Created by rasit on 8.01.2023.
//

import Foundation
import MapKit

class AnnotionModel: NSObject, MKAnnotation {
  let title: String?
  let coordinate: CLLocationCoordinate2D

  init(
    title: String?,
    coordinate: CLLocationCoordinate2D
  ) {
    self.title = title
    self.coordinate = coordinate
    super.init()
  }

}
