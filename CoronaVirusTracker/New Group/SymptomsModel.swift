//
//  SymptomsModel.swift
//  CoronaVirusTracker
//
//  Created by Arjun Raje on 6/10/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import Foundation

class AllSymptoms: ObservableObject {
    @Published var allSymptoms: [SymptomData] = []
    @Published var score: Int = 0
    @Published var isOn: Bool = false
    
    init(){
        
        let cough = SymptomData(symptomName: "Dry Cough", score: 9, isOn: false)
        addSymptoms(SymptomData: cough)
        
        let hardBreathing = SymptomData(symptomName: "Hard Time Breathing", score: 10, isOn: false)
        addSymptoms(SymptomData: hardBreathing)
        
        let tiredness = SymptomData(symptomName: "Tiredness", score: 10, isOn: false)
        addSymptoms(SymptomData: tiredness)
        
        let aches_pains = SymptomData(symptomName: "Aches and Pains", score: 9, isOn: false)
        addSymptoms(SymptomData: aches_pains)
        
        let runnyNose = SymptomData(symptomName: "Runny Nose", score: 1, isOn: false)
        addSymptoms(SymptomData: runnyNose)
        
        let fever = SymptomData(symptomName: "Fever", score: 10, isOn: false)
        addSymptoms(SymptomData: fever)
        
        let dizziness = SymptomData(symptomName: "Dizziness", score: 8, isOn: false)
        addSymptoms(SymptomData: dizziness)
        
        let slurred_speech = SymptomData(symptomName: "Slurred Speech", score: 7, isOn: false)
        addSymptoms(SymptomData: slurred_speech)
        
        let Stomach_Ache = SymptomData(symptomName: "Stomach Ache", score: 1, isOn: false)
        addSymptoms(SymptomData: Stomach_Ache)
        
        let congestion = SymptomData(symptomName: "Congestion", score: 4, isOn: false)
        addSymptoms(SymptomData: congestion)
        
    }
    
    func addSymptoms(SymptomData: SymptomData) {
        allSymptoms.append(SymptomData)
    }
}
