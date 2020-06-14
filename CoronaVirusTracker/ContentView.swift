//
//  ContentView.swift
//  PandemicTracker
//
//  Created by Arjun Raje on 6/8/20.
//  Copyright © 2020 Arjun Raje. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 20){
                NavigationLink(destination: SymptomRecentView()) {
                    Text("🤢 Check your Symptoms").font(.title)
                        .padding(.top,5)
                        .padding(.bottom,5)
                        .background(Color.green)
                        .cornerRadius(10)
                }.padding(.bottom,20)
                
                NavigationLink(destination: GeoLocatingView()) {
                    Text("Find hospitals near you").font(.title)
                        .padding(.top,5)
                        .padding(.bottom,5)
                        .background(Color.red)
                        .cornerRadius(10)
                }.padding(.bottom,20)
                
                NavigationLink(destination: HowToStaySafeView()) {
                    Text("😷 How To Stay Safe").font(.title)
                        .padding(.top,5)
                        .padding(.bottom,5)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }.padding(.bottom,20)
                
                NavigationLink(destination: RecentView()) {
                    Text("Live Update of Worldwide Cases").font(.title)
                        .padding(.top,5)
                        .padding(.bottom,5)
                        .background(Color.purple)
                        .cornerRadius(10)
                }.padding(.bottom,20)
                
                Spacer()
            }.background(Image("Coronavirus")
            .resizable()
            .frame(width:550, height:800))
            
        }
    }
}



struct HowToStaySafeView: View{
    var body: some View{
        NavigationView{
            List {
                Text("1. Practice social distancing")
                Text("2. Always wear a mask")
                Text("3. Stay at home as much as possible")
                Text("4. Wash your hands for 20 seconds")
                Spacer()
            }.font(.title)
            Spacer()
        }
    }
}

/*struct MapView: View{
    var body: some View{
        NavigationView{
            Image("map")
                .resizable()
                .frame(width:350, height: 300)
                .padding(250)
            Spacer()
        }
    }
}*/


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

