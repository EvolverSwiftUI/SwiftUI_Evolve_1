//
//  IconsBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/25/21.
//

// SwiftUI Bootcamp #6 :
// How to use System Icons, Multi-Color Icons, and SF Symbols

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
            .scaledToFit()
//            .font(.caption)
//            .font(.system(size: 200))
            .foregroundColor(.red)
            .frame(width: 300, height: 300)
//            .clipped()
        
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
