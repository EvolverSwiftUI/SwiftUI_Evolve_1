//
//  TransitionsBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//

// SwiftUI Bootcamp #27:
// How to use Transitions

import SwiftUI

struct TransitionsBootCamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            
            // Animation vs Transition
            
            // MARK: Animation
            // used when applying on vies existing in screen alredy
//            RoundedRectangle(cornerRadius: 30)
//                .frame(height: UIScreen.main.bounds.height * 0.5)
//                .opacity(showView ? 1.0 : 0.0)
//                .animation(.easeInOut)

            // MARK: Transition
            // used when new view is coming into view heirarchy.
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.slide)
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
//                    .transition(.move(edge: .bottom))
//                    .transition(
//                        .asymmetric(
//                            insertion: .move(edge: .leading),
//                            removal: .move(edge: .bottom)
//                        )
//                    )
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut)
                        )
                    )
                    .animation(.easeInOut)
            }
                
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionsBootCamp()
    }
}
