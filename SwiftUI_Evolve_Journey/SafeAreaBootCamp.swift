//
//  SafeAreaBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/28/21.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        
//      get apply of ignore safe area
//      meaning to get entire sreeen same color
        
//        ZStack {
//          Background - Use for ignore safe area
//            Color.red
//                .edgesIgnoringSafeArea(.all)
        
//          Foreground - Use for safe area
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//        }
        
        
//      Above same thing do simply by using background combinations
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(
//                Color.red
//                    .edgesIgnoringSafeArea(.all)
//            )
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(width: .infinity, height: 150)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        }
        .background(
            Color.red
//                .edgesIgnoringSafeArea(.all)
                .ignoresSafeArea()
        )
//        .edgesIgnoringSafeArea(.all) // don't use like here, coz problem

    }
}

struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}
