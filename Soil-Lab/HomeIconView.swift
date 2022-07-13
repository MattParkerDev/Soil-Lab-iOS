//
//  HomeIconView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct HomeIconView: View {
    var label: String
    var imagename: String
    var body: some View {
        VStack {
            Image(systemName: imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .padding(.top, 5)
            Text(label)
                .font(.system(size: 14))
        }
        .frame(width: 120, height: 120)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.gray)
        )
    }
}

struct HomeIconView_Previews: PreviewProvider {
    static var previews: some View {
        HomeIconView(label: "Moisture Content", imagename: "cylinder")
    }
}
