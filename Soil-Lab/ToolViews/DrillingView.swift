//
//  DrillingView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct DrillingView: View {
    var body: some View {
            List {
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.blue)
                    Text("Cold Asphalt")
                }
                HStack {
                    Image(systemName: "circle")
                        .foregroundColor(.blue)
                    Text("Small Bags")
                }
            }
        .navigationTitle("Drilling Checklist")
    }
}

struct DrillingView_Previews: PreviewProvider {
    static var previews: some View {
        DrillingView()
    }
}
