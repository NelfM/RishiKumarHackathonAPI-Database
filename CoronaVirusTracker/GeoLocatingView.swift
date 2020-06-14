//
//  ContentView.swift
//  GeoLocating
//
//  Created by Arjun Raje on 6/12/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//
import SwiftUI
import MapKit
struct GeoLocatingView: View {
    
    @ObservedObject private var locationManager = LocationManager()
    //private let locationManager = CLLocationManager()
    @State private var centerCoordinate = CLLocationCoordinate2D()
    @State private var search: String = "Hospital \n"
    @State private var landmarks: [Landmark] = [Landmark]()
    @State private var tapped: Bool = false
    
    private func getNearByLandMarks(){
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = search
        
        let search = MKLocalSearch(request: request)
        search.start {(response, error) in
            if let response = response {
                let mapItems = response.mapItems
                self.landmarks = mapItems.map {
                    Landmark(placemark: $0.placemark)
                }
            }
        }
    }
    
    
    
    var body: some View {
        //MapView()
        let coordinate = self.locationManager.location != nil ? self.locationManager.location!.coordinate : CLLocationCoordinate2D()
             return ZStack {
                MapView(landmarks: landmarks)
                 //Text("\(coordinate.latitude), \(coordinate.longitude)")
                    //.background(Color.red)
                    //.foregroundColor(Color.white)
                    //.padding()
                    //.cornerRadius(10)
                
                
                TextField("Search", text: $search){
                    self.getNearByLandMarks()
                    
                    
                }.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .offset(y:-300)
            
                }
                    //.offset(y: calculatedOffset())
            }
    }


struct GeoLocatingView_Previews: PreviewProvider {
    static var previews: some View {
        GeoLocatingView()
    }
}

