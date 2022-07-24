//
//  SliderView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 16/7/2022.
//

import SwiftUI

struct SliderView: View {
    var sizeConstant = UIScreen.main.bounds.width
    var surface: String
    var value: String
    var range: String
    var body: some View {
        HStack(spacing: 0) {
            Text(surface)
                .foregroundColor(.white)
                .padding(10)
                .frame(width: sizeConstant*0.4)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.blue)
                )
            Text(value)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .frame(width: sizeConstant*0.25)
            Rectangle()
                .frame(width: 3, height: 40)
                .foregroundColor(.blue)
            Text(range)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .frame(width: sizeConstant*0.28)
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.clear)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 3)
                )
        )
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(surface: "Lapping Paper", value: "55+-10", range: "45 - 65")
    }
}
