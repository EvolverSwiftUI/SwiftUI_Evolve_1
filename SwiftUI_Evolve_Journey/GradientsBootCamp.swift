//
//  GradientsBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/25/21.
//

// SwiftUI Bootcamp #5:
// How to use Gradients (Linear, Radial, and Angular)

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 250)
                
                AngularGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))]),
                    center: .leading,
                    angle: .degrees(180))
            )
            .frame(width: 300, height: 200, alignment: .center)
            .shadow(color: Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), radius: 5, x: 0.0, y: 5.0)
    }
}

struct GradientsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootCamp()
    }
}
