//
//  Circle.swift
//  TrafficLightsSwiftUI
//
//  Created by Anna Melekhina on 15.02.2022.
//

import SwiftUI

struct CircleShape: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleShape(color: .white, opacity: 0.4)
    }
}
