//
//  FrameBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/27/21.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(Color.gray)
//            .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(Color.red)
        
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.yellow)
            .frame(width: 200)
            .background(Color.blue)
            .frame(height: 400)
            .background(Color.orange)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.red)
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}
