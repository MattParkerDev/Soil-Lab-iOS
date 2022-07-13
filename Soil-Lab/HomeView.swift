//
//  ContentView.swift
//  Soil Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct HomeView: View {
    let icons = [
        ("Moisture", "drop", AnyView(MoistureView())),
        ("MDD Curve", "point.topleft.down.curvedto.point.bottomright.up", AnyView(MDDView())),
        ("Concrete MPA", "cylinder", AnyView(ConcreteView())),
        ("Slip Values", "number", AnyView(SlipValuesView())),
        ("Drilling", "bus.fill", AnyView(DrillingView())),
        ("Coring", "car.fill", AnyView(CoringView())),
        ("Slip Testing", "faxmachine", AnyView(SlipTestingView())),
        ("Settings", "gear", AnyView(SettingsView()))
        ]
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Soil Lab Tools")
                    .font(.largeTitle)
                Spacer()
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach(icons, id: \.0) { (label, imagename, navlink) in
                        NavigationLink(destination: navlink) {
                            HomeIconView(label: label, imagename: imagename)
                                .foregroundColor(.primary)
                        }
                        
                        
                    }
                }
                Spacer()
            }
            .navigationBarHidden(true)
            
        }
        .padding(10)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
