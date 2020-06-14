//
//  RecentView.swift
//  CoronaVirusTracker
//
//  Created by Arjun Raje on 6/10/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    @ObservedObject var covidFetch = COVIDFetchRequest()
   
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                CountryList()
                ListHeader()
                Spacer()
                List {
                    ForEach(covidFetch.allCountries, id: \.country) { CountryData in
                        CountriesData(countryData: CountryData)
                    }
                }

            }
        }
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
