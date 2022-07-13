//
//  MoistureView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct MoistureView: View {
    @State var input: String = ""
    var body: some View {
        VStack {
            Text("Weight of Tin")
            TextField("Test", text: $input)
                .frame(width: 200, height: 50)
                .keyboardType(.numberPad)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                )
        }
        
    }
}

struct MoistureView_Previews: PreviewProvider {
    static var previews: some View {
        MoistureView()
    }
}
