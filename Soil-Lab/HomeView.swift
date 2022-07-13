//
//  ContentView.swift
//  Soil Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct HomeView: View {
    let columns = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    var body: some View {
        VStack {
            Text("Soil Lab Tools")
                .font(.title)
            Spacer()
            LazyVGrid(columns: columns) {
                Text("Moisture Content")
                    .frame(width: 100, height: 100)
                Text("MDD Curve")
                    .frame(width: 100, height: 100)
                Text("Concrete MPA")
                    .frame(width: 100, height: 100)
                Text("Slip Values")
                    .frame(width: 100, height: 100)
                Text("Drilling")
                    .frame(width: 100, height: 100)
                Text("Coring")
                    .frame(width: 100, height: 100)
                Text("Drilling")
                    .frame(width: 100, height: 100)
                Text("Slip Testing") //Checklist
                    .frame(width: 100, height: 100)
                
            }
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
