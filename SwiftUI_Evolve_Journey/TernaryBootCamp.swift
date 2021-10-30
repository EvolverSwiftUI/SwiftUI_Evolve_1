//
//  TernaryBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//

// SwiftUI Bootcamp #24:
// How to use Ternary Operator

import SwiftUI

struct TernaryBootCamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STAGE!!!!" : "END STATE.")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(
                    isStartingState ? Color.red : Color.blue
                )
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )

//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

struct TernaryBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootCamp()
    }
}
