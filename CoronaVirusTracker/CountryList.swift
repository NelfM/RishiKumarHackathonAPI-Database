//
//  CountryList.swift
//  CoronaVirusTracker
//
//  Created by Arjun Raje on 6/10/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import SwiftUI

struct CountryList: View {
      @ObservedObject var covidFetch = COVIDFetchRequest()
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            HStack {
                VStack{
                    Text("\(covidFetch.totalData.confirmed)")
                        .font(.system(size: 18))
                    Text("Confirmed")
                        .font(.system(size: 18))
                }.frame(width: 100, height: 100, alignment: .center)
                .background(Color.blue)
                .cornerRadius(12)
                
                
                VStack {
                    Text("\(covidFetch.totalData.deaths)")
                        .font(.system(size: 18))
                    Text("Deaths")
                        .font(.system(size: 18))
                }.frame(width: 100, height: 100, alignment: .center)
                .background(Color.red)
                .cornerRadius(12)
                
                
                VStack {
                    Text("\(covidFetch.totalData.critical)")
                        .font(.system(size: 18))
                    Text("Critical")
                        .font(.system(size: 18))
                }.frame(width: 100, height: 100, alignment: .center)
                .background(Color.gray)
                .cornerRadius(12)
                
            }
            
            HStack(alignment: .center, spacing: 10) {
                
                VStack {
                    Text("\(covidFetch.totalData.recovered)")
                        .font(.system(size: 18))
                    Text("Recovered")
                        .font(.system(size: 18))
                }.frame(width: 100, height: 100, alignment: .center)
                .background(Color.green)
                .cornerRadius(12)
               
                VStack{
                    Text(String(format: "%.2f", covidFetch.totalData.fatalityRate))
                        .font(.system(size: 18))
                    Text("Death Rate")
                        .font(.system(size: 18))
                }.frame(width: 100, height: 100, alignment: .center)
                .background(Color.gray)
                .cornerRadius(12)
                
                VStack{
                    Text(String(format: "%.2f", covidFetch.totalData.recoveryRate))
                        .font(.system(size: 18))
                    Text("Healing Rate")
                        .font(.system(size: 18))
                }.frame(width: 100, height: 100, alignment: .center)
                .background(Color.gray)
                    .cornerRadius(12)
                
                    
            }
            Spacer()
        }.offset(y: -100)
    }
}

struct CountryList_Previews: PreviewProvider {
    static var previews: some View {
        CountryList()
    }
}
