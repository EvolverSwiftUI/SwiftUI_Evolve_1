//
//  SpacerBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/28/21.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {
        
//        HStack {
//            Spacer()
//                .frame(height: 10)
//                .background(Color.black)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.black)
//
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.black)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//            Spacer()
//                .frame(height: 10)
//                .background(Color.black)
//
//        }
//        .background(Color.purple)
        
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
//                    .frame(height: 10)
//                    .background(Color.black)
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.blue)
            
            Spacer()
//                .frame(width: 10)
//                .background(Color.black)

            Rectangle()
//                .fill(Color.blue)
                .frame(height: 50)
                
        }
//        .background(Color.yellow)

    }
}

struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
