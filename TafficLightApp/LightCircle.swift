//
//  LightCircle.swift
//  TafficLightApp
//
//  Created by Diana Ovechkina on 15.02.2022.
//

import SwiftUI

struct LightCircle: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(lineWidth: 4))
    }
}

struct LightCircle_Previews: PreviewProvider {
    static var previews: some View {
        LightCircle(color: .blue)
    }
}
