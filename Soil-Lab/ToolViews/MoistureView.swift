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
            TextField("", text: $input)
                .frame(width: 250, height: 70)
                .keyboardType(.numberPad)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 3)
                )
        }
        
    }
}

struct MoistureView_Previews: PreviewProvider {
    static var previews: some View {
        MoistureView()
    }
}
