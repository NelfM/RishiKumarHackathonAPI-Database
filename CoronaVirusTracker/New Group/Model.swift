//
//  Model.swift
//  CoronaVirusTracker
//
//  Created by Arjun Raje on 6/9/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import Foundation

struct TotalData{
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRate: Double{
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveryRate: Double{
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

struct CountryData {
    
    let country: String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double{
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveryRate: Double{
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

class SymptomData {
    let symptomName: String
    let score: Int
    var isOn: Bool
    
    init(symptomName: String, score: Int, isOn: Bool){
        self.symptomName = symptomName
        self.score = score
        self.isOn = isOn
    }
    
    func addScore(totalScore: Int) -> Int{
        var totalScore2 = totalScore
        totalScore2 = totalScore2 + score
        return totalScore2
    }
    
    func switchIsOn(){
        self.isOn = !self.isOn
    }
}


let testTotalData = TotalData(confirmed: 100, critical: 100, deaths: 100, recovered: 100)
let testCountryData = CountryData(country: "Test", confirmed: 100, critical: 100, deaths: 100, recovered: 100, longitude: 0.0, latitude: 0.0)
