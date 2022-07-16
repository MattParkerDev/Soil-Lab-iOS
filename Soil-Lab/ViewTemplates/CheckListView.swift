//
//  CheckListView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 15/7/2022.
//

import SwiftUI

struct CheckListView: View {
    @Binding var items: [CheckListItem]
    var body: some View {
        List {
            ForEach($items) { $item in
                Button(action: {item.isChecked.toggle()} ) {
                    Label {
                        Text(item.name)
                            .foregroundColor(.primary)
                    } icon: {
                        (item.isChecked) ? Image(systemName: "checkmark.circle.fill") : Image(systemName: "circle")
                    }
                }
            }
        }
    }
}

struct CheckListView_Previews: PreviewProvider {
    static var previews: some View {
        CheckListView(items: .constant([CheckListItem(name: "Test")]))
    }
}

