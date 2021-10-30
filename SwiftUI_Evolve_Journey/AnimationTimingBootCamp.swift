//
//  AnimationTimingBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//

// SwiftUI Bootcamp #26:
// How to use animation curves and timing

import SwiftUI

struct AnimationTimingBootCamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.default)

            
            // Normal Speed through out animation
            // Start - Mid - End
            // Same - Same - Same
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.linear(duration: timing))
            
            // Normal Speed through out animation
            // Start -  End
            // Slow - Speed
            // takeoff slowly then pickup Speed and end with same Speed

//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeIn(duration: timing))

            // Normal Speed through out animation
            // Start - Mid - End
            // Slow - Speed - Slow
            // takeoff slowly then pickup Speed then land with slowly
//           RoundedRectangle(cornerRadius: 25.0)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeInOut(duration: timing))
            
            // Normal Speed through out animation
            // Start - End
            // Speed - Slow
            // takeoff Speedly then become slow and end Slowly
//            RoundedRectangle(cornerRadius: 25.0)
//                .frame(
//                    width: isAnimating ? 350 : 50,
//                    height: 100
//                )
//                .animation(Animation.easeOut(duration: timing))
            
            // Finally all 4 animations will end at the same time only, but their speeds will control based on animation types.

            
            // MARK: Spring Animation
            RoundedRectangle(cornerRadius: 25.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(Animation.spring())
            
            // MARK: Spring with different options
            RoundedRectangle(cornerRadius: 25.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(Animation.spring(
                            response: 3.0,
                            dampingFraction: 1.0,
                            blendDuration: 1.0)
                )
            RoundedRectangle(cornerRadius: 25.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(Animation.spring(
                            response: 3.0,
                            dampingFraction: 0.5,
                            blendDuration: 1.0)
                )

            RoundedRectangle(cornerRadius: 25.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(Animation.spring(
                            response: 3.0,
                            dampingFraction: 0.2,
                            blendDuration: 1.0)
                )

            // Generally recommened animation using Spring
            RoundedRectangle(cornerRadius: 25.0)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
                .animation(Animation.spring(
                            response: 0.5,
                            dampingFraction: 0.7,
                            blendDuration: 1.0)
                )

        }
    }
}

struct AnimationTimingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootCamp()
    }
}
