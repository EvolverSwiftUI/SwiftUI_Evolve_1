//
//  GridBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/28/21.
//

import SwiftUI

struct GridBootCamp: View {
    
    // MARK: with Fixed size
//    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
//    ]
    
    // MARK: with Flexible size
//    let columns: [GridItem] = [
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//    ]


    // MARK: with Adaptive size
//    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
//    ]

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 8, alignment: nil),
        GridItem(.flexible(), spacing: 8, alignment: nil),
        GridItem(.flexible(), spacing: 8, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      spacing: 8,
                      pinnedViews:[.sectionHeaders]) {
                Section(header:
                            Text("Section 1")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .background(Color.blue)
                            .padding()
                            .background(Color.red)

                ) {
                    ForEach(0..<18) { index in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 150)
                    }
                }
                Section(header:
                            Text("Section 2")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
//                            .background(Color.green)
                            .padding()
                            .background(Color.red)

                ) {
                    ForEach(0..<18) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
            }
            .padding(.all, 8)
        }

    }
}

struct GridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootCamp()
    }
}
