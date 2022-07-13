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
        VStack(spacing: 0) {
            Image(systemName: imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.black)
                .padding(20)
                .frame(minWidth: 50, idealWidth: 120, maxWidth: 120, minHeight: 50, idealHeight: 120, maxHeight: 120)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.blue)
                        .aspectRatio(1, contentMode: .fit)
                )
            Text(label)
                .font(.system(size: 16))
                .padding(.top, 2)
                .padding(.bottom, 10)
        }
        
    }
}

struct HomeIconView_Previews: PreviewProvider {
    static var previews: some View {
        HomeIconView(label: "Moisture Content", imagename: "cylinder")
    }
}
