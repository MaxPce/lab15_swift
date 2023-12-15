//
//  PlaceViewModel.swift
//  airbnb-clone-b
//
//  Created by Alumno on 1/12/23.
//

import Foundation
import MapKit

class PlaceViewModel: ObservableObject {
    @Published var places: Place = Place(places: [PlaceDetail]())
        
            func loadData() async {
            guard let url = URL(string: "https://airbnb-api-vert.vercel.app/airbnb") else {
                print("Invalid URL")
                return
            }
            
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                
                if let decoder = try? JSONDecoder().decode(Place.self, from: data) {
                    DispatchQueue.main.async {
                        self.places = decoder
                    }
                }
                
            } catch let error {
                print(error.localizedDescription)
            }
        }
}
