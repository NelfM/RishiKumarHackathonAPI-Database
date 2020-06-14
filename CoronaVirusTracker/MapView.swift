//
//  MapView.swift
//  GeoLocating
//
//  Created by Arjun Raje on 6/12/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let landmarks: [Landmark]
    
    func makeUIView(context: Context) -> MKMapView {
        let map = MKMapView()
        map.showsUserLocation = true
        map.delegate = context.coordinator
        return map
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        updateAnnotations(from: uiView)
    }
    
    private func updateAnnotations(from mapView: MKMapView) {
        mapView.removeAnnotations(mapView.annotations)
        let annotations = self.landmarks.map(LandmarkAnnotation.init)
        mapView.addAnnotations(annotations)
    }
}


