//
//  ForEachBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/28/21.
//

import SwiftUI

struct ForEachBootCamp: View {
    
    let data = ["Hi", "Hello", "Everyone"]
    var body: some View {
        VStack(spacing: 10) {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 40, height: 40)
//                    Text("Hello, World!")
//                    Text("- \(index)")
//                }
//            }
            
            ForEach(data.indices) { index in
                HStack {
                    Text("\(data[index]): \(index)")
                }
            }
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}
