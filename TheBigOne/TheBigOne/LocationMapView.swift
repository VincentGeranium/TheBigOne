//
//  LocationMapView.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/23.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.5642135,
                                                                                  longitude: 127.0016985),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.01,
                                                                          longitudeDelta: 0.01))
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            VStack {
                Image("map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 70, alignment: .center)
                    .shadow(radius: 10)
        
                Spacer()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
