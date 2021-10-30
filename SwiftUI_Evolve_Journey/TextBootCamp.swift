//
//  TextBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/25/21.
//

// SwiftUI Bootcamp #2:
// About Text

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        
//        Text("Hello, World!!".lowercased())
//        Text("Hello, World!!".uppercased())
        Text("Hello, World!!".capitalized) // Used for Cities, States and Names
            

//        Text("Hello, Everyone. This is SwiftUI exploring journey, and i am enjoing the course and getting a lot of things into my way 😊")
//            .font(.body)
//            .fontWeight(.semibold)
//            .italic()
//            .bold()
//            .underline()
//            .underline(true, color: Color.yellow)
//            .strikethrough()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .rounded))
//            .padding()
//            .baselineOffset(20.0)
//            .baselineOffset(-20)
//            .kerning(1.0)
//            .kerning(10.0)
            
            .multilineTextAlignment(.leading)
            .padding()
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
            
        
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
