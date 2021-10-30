//
//  ExtractedFunctionsBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//

import SwiftUI

struct ExtractedFunctionsBootCamp: View {
    
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            // Background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
                .foregroundColor(.black)
            
            Button(action: {
                buttonTapped()
            }, label: {
                buttonLabel
            })
        }
    }
    
    var buttonLabel: some View {
        Text("SAVE")
            .font(.headline)
            .bold()
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(Color.black)
            .cornerRadius(10)
    }
    
    func buttonTapped() {
        backgroundColor = Color.red
    }
    
}

struct ExtractedFunctionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootCamp()
    }
}
