//
//  TripsView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.045121, longitude: -76.952069), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        
            
            ZStack {
                Map(coordinateRegion: $region)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    HStack {
                        Image("image")
                            .resizable()
                            .frame(width: 120, height: 120)
                        VStack(alignment: .leading) {
                            HStack{
                                Text("La Calera, Colombia")
                                    .fontWeight(.semibold)
                                    .font(.caption)
                                Spacer()
                                Image("heart")
                                    .foregroundColor(.red)
                                    .font(.caption)
                                    .padding(.trailing, 8)
                            }
                            
                            Spacer()
                            Text("Nov 19 - 24")
                                .fontWeight(.light)
                                .foregroundStyle(.gray)
                                .font(.caption2)
                            
                            HStack{
                                
                                Text("S/ 268 night")
                                    .font(.caption)
                                Spacer()
                                Image("ovni")
                                    .foregroundColor(.yellow)
                                    .font(.caption)
                                    .padding(.vertical, 2)
                                Text("4.91")
                                    .font(.caption)
                            }
                            
                        }
                        
                        .frame(maxHeight: 120)
                        Spacer()
                    }
                    .background(.white)
                }.padding()
                
                
                    
                    
            }
        }

}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
