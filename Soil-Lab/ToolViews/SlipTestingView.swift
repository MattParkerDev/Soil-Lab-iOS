//
//  SlipTestingView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct SlipTestingView: View {
    @State var listArray: [CheckListItem] =
    ["Machine", "Water", "Sliders", "Level", "Thermometer", "Tiles", "Brush", "Foam", "Paperwork"]
        .map {CheckListItem.init(name: $0)}
    var body: some View {
        VStack {
            CheckListView(items: $listArray)
        }
        .navigationTitle("Slip Testing Checklist")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SlipTestingView_Previews: PreviewProvider {
    static var previews: some View {
        SlipTestingView()
    }
}
