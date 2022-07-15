//
//  CheckListItem.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 15/7/2022.
//

import Foundation

struct CheckListItem: Identifiable {
    let id = UUID()
    let name: String
    var isChecked: Bool = false
}
