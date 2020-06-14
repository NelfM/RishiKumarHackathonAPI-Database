//
//  SymptomsView.swift
//  CoronaVirusTracker
//
//  Created by Arjun Raje on 6/10/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import SwiftUI

struct SymptomsView: View{
    @State private var show1 = false
    var body: some View{
        Text("Check Your Symptoms")

    }
    
}

struct SymptomsList: View{
    @State var show1 = false
    //@ObservedObject var allSymptoms = AllSymptoms()
    
    @State var currentScore: Int = 0
    var symptomData: SymptomData
    var body: some View {
        VStack {

            Toggle(isOn: $show1) {
                Text("\(symptomData.symptomName)").font(.title)
                
            }
            if show1 == true {
                //score = symptomData.addScore(totalScore: score)
                Text("Severity of Symptom: \(symptomData.score)")
                
            }
        }
        
    }
}
        /*VStack(alignment: .leading, spacing: 20){
            Toggle(isOn: $show1) {
                Text("Runny Nose").font(.title)
               
            }
            if show1 {
                Text("runny nose Symptom")
            }
            
            Toggle(isOn: $show2) {
                Text("Cough").font(.title)
            }
            if show2 {
                Text("Cough Symptom")
            }
            
            Toggle(isOn: $show3) {
                VStack(alignment: .leading){
                    Text("Hard Time Breathing").font(.title)
                    Text("Check if you can hold your breath for ten seconds")
                }
            }
            if show3 {
                Text("Hard Time Breathing Symptom")
            }
            Text("Score: ")
            Spacer()
        }*/
        



struct SymptomsView_Previews: PreviewProvider {
    static var previews: some View {
        SymptomsView()
    }
}
