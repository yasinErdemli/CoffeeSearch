//
//  Business.swift
//  CoffeeSearch
//
//  Created by Yasin Erdemli on 28.02.2023.
//

import Foundation
import MapKit

struct Business: Identifiable {
    let id = UUID()
    let name: String
    let placemark: MKPlacemark
    let coordinae: CLLocationCoordinate2D
    let phoneNumber: String
    let website: URL?
}
