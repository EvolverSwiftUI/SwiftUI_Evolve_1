//
//  TapGestureBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/31/21.
//

// SwiftUI Bootcamp #48:
// How to use onTapGesture

import SwiftUI

struct TapGestureBootCamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            Button(action: {
                isSelected.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
             
            Text("TAP Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            Spacer()
        }
        .padding(40)
    }
}

struct TapGestureBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootCamp()
    }
}
