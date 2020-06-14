//
//  SymptomRecentView.swift
//  CoronaVirusTracker
//
//  Created by Arjun Raje on 6/11/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import SwiftUI
import MapKit
struct SymptomRecentView: View {
    @ObservedObject var allSymptoms = AllSymptoms()
    @State private var totalScore = 0
    @State private var showDetails = false
    @State private var search: String = "Hospital"
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
        VStack{
            Text("Check Your Symptoms")
                .font(.title)
        
            List {
                ForEach(allSymptoms.allSymptoms, id: \.symptomName) { symptomData in
                    //SymptomsList(symptomData: symptomData)
                    HStack {
                        Button(action: {
                            symptomData.isOn = !symptomData.isOn
                            if symptomData.isOn {
                                self.totalScore = self.totalScore + symptomData.score
                                
                            } else {
                                self.totalScore = self.totalScore - symptomData.score
                            }
                            
                        }) {
                            Text(symptomData.symptomName)
                                .font(.title)
                                .background(Color.purple)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                        }
                        if symptomData.isOn {
                            Text("✅")
                                .padding(25)
                                .foregroundColor(Color.red)
                        }
                    }
                    
                }
                Text("Score: \(totalScore)")
                
                if totalScore>=28 {
                    Text("There is a high probability you have coronavirus")
                    
                }
                
                else if totalScore>=10 {
                    Text("There is a moderate probability you have coronavirus")
                } else{
                    Text("There is a very low probability you have coronavirus")
                }
            }
        }
    }
}
struct SymptomRecentView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomRecentView()
    }
}

