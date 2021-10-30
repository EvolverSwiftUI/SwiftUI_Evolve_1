//
//  ImageBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/27/21.
//

import SwiftUI

struct ImageBootCamp: View {
    var body: some View {
        Image("img3")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
//                Circle()
//            )
            
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
