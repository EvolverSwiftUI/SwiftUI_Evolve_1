//
//  ColorBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/25/21.
//

// SwiftUI Bootcamp #4:
// How to use Color, UIColor, Color Literals, and Hex Colors

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.purple
//                Color.primary
//                Color.secondary
//                Color(#colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.7160418176))
//                Color(UIColor.secondarySystemBackground)
                Color("Custom Color 2")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 8)
            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0.0, y: 5)
    }
}

struct ColorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootCamp()
    }
}
