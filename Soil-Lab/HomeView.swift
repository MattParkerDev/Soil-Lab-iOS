//
//  ContentView.swift
//  Soil Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct HomeView: View {
    let icons = [
        ("Moisture Content", "testtube.2"),
        ("MDD Curve", "testtube.2"),
        ("Concrete MPA", "testtube.2"),
        ("Slip Values", "testtube.2"),
        ("Drilling", "testtube.2"),
        ("Coring", "testtube.2"),
        ("Slip Testing", "testtube.2"),
        ("Settings", "gear")
        ]
    let columns = [
        GridItem(.fixed(120), spacing: 5),
        GridItem(.fixed(120), spacing: 5),
        GridItem(.fixed(120), spacing: 5)
    ]
    var body: some View {
        VStack {
            Text("Soil Lab Tools")
                .font(.title)
            Spacer()
            LazyVGrid(columns: columns, spacing: 5) {
                ForEach(icons, id: \.0) { (label, imagename) in
                    HomeIconView(label: label, imagename: imagename)
                    
                }
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
