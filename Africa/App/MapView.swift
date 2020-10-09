//
//  MapView.swift
//  Africa
//
//  Created by Abdelrahman Mohamed on 20.09.2020.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
        
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    
    var body: some View {
        
        // MARK: - No1 BASIC MAP
        // Map(coordinateRegion: $region)
        
        // MARK: - No2 ANNOTATIONS MAP
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            
            // MARK: - (A) PIN: OLD STYLE (always static)
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // MARK: - (B) MARKER: NEW STYLE (always static)
            // MapMarker(coordinate: item.location, tint: .accentColor)
            
            // MARK: - (C) CUSTOM BASIC ANNOTATION: (it could be interactive)
//            MapAnnotation(coordinate: item.location) {
//
//                ZStack {
//
//                    Circle()
//                        .fill(Color.accentColor)
//                        .frame(width: 54, height: 54, alignment: .center)
//
//                    Circle()
//                        .stroke(Color.accentColor, lineWidth: 2)
//                        .frame(width: 52, height: 52, alignment: .center)
//
//                    Image(item.image)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 48, height: 48, alignment: .center)
//                        .clipShape(Circle())
//                }
//            }
            
            // MARK: - (D) CUSTOM ADVANCED ANNOTATION: (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
