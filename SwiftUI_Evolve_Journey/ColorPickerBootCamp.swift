//
//  ColorPickerBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #39:
// How to use ColorPicker

import SwiftUI

struct ColorPickerBootCamp: View {
    
    @State var bgColor: Color = Color.green
    
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a Color",
                        selection: $bgColor,
                        supportsOpacity: true)
                .font(.headline)
                .padding()
                .background(
                    Color.black
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder()
                        )
                        

                )
                .foregroundColor(.white)
                .padding(50)
        }
    }
}

struct ColorPickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootCamp()
    }
}
