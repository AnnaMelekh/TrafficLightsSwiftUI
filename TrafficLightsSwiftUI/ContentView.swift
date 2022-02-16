//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Anna Melekhina on 15.02.2022.
//

import SwiftUI

enum CurrentLight{
    case red, yellow, green
}

struct ContentView: View {
    private let lightOn = 1.0
    private let lightOff = 0.4

    @State private var redOff = 0.4
    @State private var yellowOff = 0.4
    @State private var greenOff = 0.4

    @State private var currentLight = CurrentLight.red
//    @State private var redLight =  CircleShape(color: .red)
//    @State private var yellowLight = CircleShape(color: .yellow)
//    @State private var greenLight = CircleShape(color: .green)
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                CircleShape(color: .red, opacity: redOff)
                CircleShape(color: .yellow, opacity: yellowOff)
                CircleShape(color: .green, opacity: greenOff)

                Spacer()
                Button (action: {
                    switch currentLight {
                    case    .red:
                        redOff = lightOn
                        greenOff = lightOff
                        currentLight = .yellow
                    case .yellow:
                        redOff = lightOff
                        yellowOff = lightOn
                        currentLight = .green
                    case .green:
                        yellowOff = lightOff
                        greenOff = lightOn
                        currentLight = .red
                    }
                }) { Text("START")
                        .padding()
                        .font(.title)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
                    }
                .padding()
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}}
