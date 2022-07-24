//
//  ConcreteView.swift
//  Soil-Lab
//
//  Created by Matthew Parker on 13/7/2022.
//

import SwiftUI

struct ConcreteView: View {
    @State var diameter1: Double?
    @State var diameter2: Double?
    @State var force: Double?
    @State var mpa: String = ""
    @FocusState private var tinIsFocused: Bool
    var body: some View {
        VStack {
            HStack {
                Text("Diameter 1 (mm)")
                    .font(.system(size: 20))
                    .padding(.leading, 20)
                Spacer()
                TextField("", value: $diameter1, format: .number)
                    .focused($tinIsFocused)
                    .styleTextField()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            tinIsFocused.toggle()
                        }
                    }
            }
            HStack {
                Text("Diameter 2 (mm)")
                    .font(.system(size: 20))
                    .padding(.leading, 20)
                Spacer()
                TextField("", value: $diameter2, format: .number)
                    .styleTextField()
            }
            HStack {
                Text("Force (kN)")
                    .font(.system(size: 20))
                    .padding(.leading, 20)
                Spacer()
                TextField("", value: $force, format: .number)
                    .styleTextField()
            }
            HStack {
                Text("MPA")
                    .font(.system(size: 20))
                    .padding(.leading, 20)
                Spacer()
                Text(mpa)
                    .styleTextField()
                    .onChange(of: diameter1) { newValue in
                        mpa = calculation(diameter1: diameter1 ?? 0.0, diameter2: diameter2 ?? 0.0, force: force ?? 0.0)
                    }
                    .onChange(of: diameter2) { newValue in
                        mpa = calculation(diameter1: diameter1 ?? 0.0, diameter2: diameter2 ?? 0.0, force: force ?? 0.0)
                    }
                    .onChange(of: force) { newValue in
                        mpa = calculation(diameter1: diameter1 ?? 0.0, diameter2: diameter2 ?? 0.0, force: force ?? 0.0)
                    }
            }
        }
    }
}

struct ConcreteView_Previews: PreviewProvider {
    static var previews: some View {
        ConcreteView()
    }
}

private extension View {
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


private extension View {
    func calculation(diameter1: Double, diameter2: Double, force: Double) -> String {
        var mpa: Double = 0.0
        if (diameter1 != 0.0 && diameter2 != 0.0 && force != 0.0) {
            mpa = (force * 1000) / (Double.pi * pow((diameter1 + diameter2)/4, 2))
            return String(format: "%.2f", mpa)
        } else {
            return ""
        }
    }
}
