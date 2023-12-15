//
//  PlaceModel.swift
//  airbnb-clone-b
//
//  Created by Alumno on 1/12/23.
//

import Foundation
import MapKit

struct Place: Codable {
    let places: [PlaceDetail]
}

struct PlaceDetail: Codable {
    let name: String
    let rating: Double
    let location: Location
    let image_url: String
    let date: String
    let price: Double
}

struct Location: Codable {
    let country: String
    let city: String
    let latitude : Double
    let longitude : Double
}

struct PlaceCoordinate: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
