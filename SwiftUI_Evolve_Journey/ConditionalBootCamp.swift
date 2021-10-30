//
//  ConditionalBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//

import SwiftUI

struct ConditionalBootCamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        
        VStack(spacing:20) {
            
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Rectangle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//
//            }
//            if showRectangle || showCircle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 100)
//            }

            Spacer()
        }
    }
}

struct ConditionalBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootCamp()
    }
}
