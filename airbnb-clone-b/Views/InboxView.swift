//
//  InboxView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct InboxView: View {
    @StateObject private var PlaceModel = PlaceViewModel()

    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            List(PlaceModel.places.places, id: \.name) { place in
                VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: place.image_url)!) { image in
                        image
                            .frame(width: 362, height: 323)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(12)
                    }placeholder: {
                        ProgressView()
                    }
                    HStack{
                        Text(place.name)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "star.fill")
                            .font(.system(size:11))
                        Text("4.76")
                    }
                    Text(place.location.country)
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    Text(String(place.rating))
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    Text(place.location.city)
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                    Text(place.date)
                        .fontWeight(.semibold)
                    Text(String(place.price))
                        .fontWeight(.semibold)
                    
                }
            }.task {
                await PlaceModel.loadData()
            }.listStyle(.inset)

            
        }.padding()
    }
}



struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
