//
//  ExtractSubviewsBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//


// SwiftUI Bootcamp #21:
// How to Extract Subviews (to create reusable views)

import SwiftUI

struct ExtractSubviewsBootCamp: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(count: 30, title: "Apples", color: .red)
            MyItem(count: 30, title: "Oranges", color: .orange)
            MyItem(count: 30, title: "Bananas", color: .yellow)
        }
    }
}

struct ExtractSubviewsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootCamp()
    }
}

struct MyItem: View {
    
    let count: Int
    let title: String
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .foregroundColor(.white)
        .padding()
        .frame(width: 100, height: 70)
        .background(color)
        .cornerRadius(10)
    }
}
