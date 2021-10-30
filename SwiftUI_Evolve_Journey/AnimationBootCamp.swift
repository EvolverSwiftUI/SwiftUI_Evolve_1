//
//  AnimationBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//

// SwiftUI Bootcamp #25:
// How to add animations using .animation() and withAnimation()

import SwiftUI

struct AnimationBootCamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isAnimated.description)") {
//                withAnimation(
//                    Animation
//                        .default
//                        .delay(2.0)
//                        .repeatCount(5, autoreverses: true)
//                        .repeatForever(autoreverses: true)
//                ) {
                    isAnimated.toggle()
//                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(
                    isAnimated ? Color.red: Color.green
                )
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(
                    Angle(degrees: isAnimated ? 360 : 0)
                )
                .offset(
                    y: isAnimated ? 300 : 0
                )
                .animation(
                    Animation
                        .default
                        .repeatForever(autoreverses: true)
                )
            Spacer()
        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
