//
//  DrillingView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct DrillingView: View {
    @State var listArray: [CheckListItem] =
    ["Small Bags", "Big Bags","Hessian Bags", "Zip Ties", "Ruler", "Paperwork", "Cold Asphalt"]
        .map {CheckListItem.init(name: $0)}
    var body: some View {
        VStack {
            CheckListView(items: $listArray)
        }
        .navigationTitle("Drilling Checklist")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct DrillingView_Previews: PreviewProvider {
    static var previews: some View {
        DrillingView()
    }
}
