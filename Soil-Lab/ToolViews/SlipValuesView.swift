//
//  SlipValuesView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct SlipValuesView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Slider 55")
                .font(.headline)
            SliderView(surface: "P400 Sandpaper", value: "115±10", range: "105 - 125")
            SliderView(surface: "Lapping Paper", value: "55±6", range: "49 - 61")
            Spacer()
            Text("Slider 96")
                .font(.headline)
            SliderView(surface: "P400 Sandpaper", value: "85±10", range: "75 - 95")
            SliderView(surface: "Lapping Paper", value: "61±3", range: "58 - 64")
            Spacer()
        }
        .navigationTitle("Slip Values")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SlipValuesView_Previews: PreviewProvider {
    static var previews: some View {
        SlipValuesView()
    }
}
