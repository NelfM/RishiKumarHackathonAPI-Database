//
//  PlaceListView.swift
//  CoronaVirusTracker
//
//  Created by Arjun Raje on 6/13/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import SwiftUI
import MapKit
struct PlaceListView: View {
    let landmark: [Landmark]
    var onTap: () -> ()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                EmptyView()
            }.frame(width: UIScreen.main.bounds.size.width, height: 60)
                .background(Color.black)
                .gesture(TapGesture()
                    .onEnded(self.onTap)
            )
            List {
                ForEach(self.landmark, id: \.id) { landmark in
                    VStack(alignment: .leading) {
                        Text(landmark.name)
                            .fontWeight(.bold)
                        Text(landmark.title)
                    }
                }
            }
        }
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmark: [Landmark(placemark: MKPlacemark())], onTap: {})
    }
}
