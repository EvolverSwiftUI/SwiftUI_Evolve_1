//
//  StateBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//

import SwiftUI

struct StateBootCamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "My Title"
    @State var count: Int = 0
    @State var buttonTitle: String = ""
    
    var body: some View {
        ZStack {
            // BAckground
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //Content
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("BUTTON 1") {
                        backgroundColor = Color.red
                        title = "Button #1 is tapped"
                        count += 1
                    }
                    Button("BUTTON 2") {
                        backgroundColor = Color.purple
                        title = "Button #2 is tapped"
                        count -= 1
                   }
                }
            }
            .foregroundColor(Color.white)
        }
    }
}

struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}
