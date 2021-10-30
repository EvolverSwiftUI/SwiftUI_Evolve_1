//
//  PaddingAndSpacerBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/28/21.
//

import SwiftUI

struct PaddingAndSpacerBootCamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(Color.red)
//            .padding()
//            .padding(.all, 20)
//            .padding(.horizontal, 20)
//            .padding(.vertical, 50)
//            .padding(.top, 10)
//            .padding(.bottom, 10)
//            .padding(.leading, 10)
//            .padding(.trailing, 10)
//            .padding([.top, .leading, .bottom], 30)
//
//            .background(Color.blue)
        
//        Text("Hello, World")
//            .font(.title)
//            .fontWeight(.semibold)
//            .background(Color.red)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.green)
//            .padding(.horizontal)
//            .background(Color.yellow)
        
        
        
        // MARK: Dynamic Frame creation around the TEXT CARD
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Hello, World")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("Hi, we adding frame to multiline text. We can do it by adding padding on that large frame. To understand it add background color on each view.qwhurugiu23giu23griu23griu2g3ri23ri23r23ri2f3rif23rf23rf23rf23rfy23fry23frf23ryf23ruf2uo3rf23r23fyorf23ry23yr23ru1r1or1frf12fr1frf1yrf1yor1y2rfou12rf1oufyrfy12urfu12r12fyur12fuyr1fuy2ruy12r12r1")
                .font(.body)
                .fontWeight(.medium)
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10.0
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black.opacity(0.3), lineWidth: 0.5)
                )
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootCamp()
    }
}
