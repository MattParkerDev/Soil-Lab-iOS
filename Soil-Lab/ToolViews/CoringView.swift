//
//  CoringView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct CoringView: View {
    @State var listArray: [CheckListItem] =
    ["Small Bags", "Hessian Bags", "Water", "Fuel", "Core Barrels", "Paperwork", "Cold Asphalt", "Old Cores"]
        .map {CheckListItem.init(name: $0)}
    var body: some View {
        VStack {
            CheckListView(items: $listArray)
        }
        .navigationTitle("Coring Checklist")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct CoringView_Previews: PreviewProvider {
    static var previews: some View {
        CoringView()
    }
}
