//
//  Coordinator.swift
//  GeoLocating
//
//  Created by Arjun Raje on 6/12/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import Foundation
import MapKit
final class Coordinator: NSObject, MKMapViewDelegate {
    
    var control: MapView
    
    init(_ control: MapView) {
        self.control = control
    }
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        if let annotationView = views.first{
            if let annotation = annotationView.annotation {
                if annotation is MKUserLocation {
                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 3000, longitudinalMeters: 3000)
                    mapView.setRegion(region, animated: true)
                }
            }
        }
    }
}

