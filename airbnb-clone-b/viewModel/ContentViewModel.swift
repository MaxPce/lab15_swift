//
//  ContentViewModel.swift
//  airbnb-clone-b
//
//  Created by Alumno on 15/12/23.
//

import Foundation
import MapKit

class ContentViewModel: ObservableObject {
    
    @Published var annotations: [PlaceCoordinate] = [PlaceCoordinate]()
    
    let places = [
        Place(name: "London", latitude: 51.507222, longitude: -0.1275),
        Place(name: "Paris", latitude: 48.8567, longitude: 2.3508),
        // Add more places as needed
    ]

    init(places: [PlaceDetail]) {
        for place in places {
            annotations.append(PlaceCoordinate(name: place.name, coordinate: CLLocationCoordinate2D(latitude: place.location.latitude, longitude: place.location.longitude)))
        }
    }
}
