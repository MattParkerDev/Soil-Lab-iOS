//
//  MoistureView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct MoistureView: View {
    @State var tinMass: Double?
    @State var tinWetMass: Double?
    @State var tinDryMass: Double?
    @State var mContent: String = ""
    @FocusState private var tinIsFocused: Bool
    var body: some View {
        VStack {
            HStack {
                Text("Mass of Tin")
                    .font(.system(size: 20))
                    .padding(.leading, 20)
                Spacer()
                TextField("", value: $tinMass, format: .number)
                    .focused($tinIsFocused)
                    .styleTextField()
            }
            HStack {
                Text("Mass of Tin\n+ Wet Soil")
                    .font(.system(size: 20))
                    .padding(.leading, 20)
                Spacer()
                TextField("", value: $tinWetMass, format: .number)
                    .styleTextField()
            }
            HStack {
                Text("Mass of Tin\n+ Dry Soil")
                    .font(.system(size: 20))
                    .padding(.leading, 20)
                Spacer()
                TextField("", value: $tinDryMass, format: .number)
                    .styleTextField()
            }
            HStack {
                Text("Moisture Content")
                    .font(.system(size: 20))
                    .padding(.leading, 20)
                Spacer()
                Text(mContent)
                    .styleTextField()
                    .onChange(of: tinMass) { newValue in
                        mContent = calculation(tinMass: tinMass ?? 0.0, tinWetMass: tinWetMass ?? 0.0, tinDryMass: tinDryMass ?? 0.0)
                    }
                    .onChange(of: tinWetMass) { newValue in
                        mContent = calculation(tinMass: tinMass ?? 0.0, tinWetMass: tinWetMass ?? 0.0, tinDryMass: tinDryMass ?? 0.0)
                    }
                    .onChange(of: tinDryMass) { newValue in
                        mContent = calculation(tinMass: tinMass ?? 0.0, tinWetMass: tinWetMass ?? 0.0, tinDryMass: tinDryMass ?? 0.0)
                    }
            }
        }
        
    }
}

struct MoistureView_Previews: PreviewProvider {
    static var previews: some View {
        MoistureView()
    }
}

extension View {
    func styleTextField() -> some View {
        self
            .font(.system(size: 40))
            .frame(width: UIScreen.main.bounds.width/1.876, height: UIScreen.main.bounds.width/5.3)
            .multilineTextAlignment(.center)
            .keyboardType(.decimalPad)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 3)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(hue: 1.0, saturation: 0.0, brightness: 0.85))
                    )
            )
            .padding(.trailing, 20)
    }
}


extension View {
    func calculation(tinMass: Double, tinWetMass: Double, tinDryMass: Double) -> String {
        var mContent: Double = 0.0
        if (tinMass != 0.0 && tinWetMass != 0.0 && tinDryMass != 0.0) {
            mContent = (tinWetMass - tinDryMass) / (tinDryMass - tinMass) * 100
            return String(format: "%.2f", mContent) + "%"
        } else {
            return ""
        }
    }
}
