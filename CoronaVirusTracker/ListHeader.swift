//
//  ListHeader.swift
//  CoronaVirusTracker
//
//  Created by Arjun Raje on 6/10/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import SwiftUI

struct ListHeader: View {
   
    var body: some View {
        //VStack{
            
       // }
            HStack {
                Text("Country")
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .frame(width: 110, alignment: .leading)
                    .padding(.leading, 15)
                Spacer()
                Text("Conf.")
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .frame(width: 60, alignment: .trailing)
                    .padding(.leading, 15)
                Spacer()
                Text("Death")
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .frame(width: 75, alignment: .trailing)
                    .padding(.leading, 15)
                Spacer()
                Text("Recovered")
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .frame(width: 110, alignment: .trailing)
                    .padding(.trailing, 15)
                Spacer()
                }
            .frame(width: 420, height: 50, alignment: .leading)
            .background(Color.gray)
    }
}


struct CountriesData: View {
    // @ObservedObject var covidFetch = COVIDFetchRequest()
    var countryData: CountryData
    var body: some View {
        HStack {
            Text(countryData.country)
                    .fontWeight(.medium)
                    .font(.subheadline)
                    .frame(width: 95, alignment: .leading)
                    .padding(.leading, 15)
                Spacer()
            Text("\(countryData.confirmed)")
                    .fontWeight(.medium)
                    .font(.subheadline)
                    .frame(width: 75)
                    .padding(.leading, 15)
                    .foregroundColor(Color.blue)
                Spacer()
                Text("\(countryData.deaths)")
                    .fontWeight(.medium)
                    .font(.subheadline)
                    .frame(width: 65)
                    .padding(.leading, 15)
                    .foregroundColor(Color.red)
                Spacer()
                Text("\(countryData.recovered)")
                    .fontWeight(.medium)
                    .font(.subheadline)
                    .frame(width: 80)
                    .padding(.trailing, 15)
                    .foregroundColor(Color.green)
                Spacer()
            }
            .frame(width: 420, height: 30, alignment: .leading)
    
        }
    }

struct ListHeader_Previews: PreviewProvider {
    static var previews: some View {
        ListHeader()
    }
}
