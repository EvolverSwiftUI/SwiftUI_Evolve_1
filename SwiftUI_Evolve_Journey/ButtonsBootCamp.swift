//
//  ButtonsBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/28/21.
//

import SwiftUI

struct ButtonsBootCamp: View {
    
    @State var title = "Sachin"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Button") {
                self.title = "Something changed by button #1"
            }
            Button(action: {
                self.title = "Another thing changed by button #2"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Color.blue
                            .cornerRadius(10.0)
                            .shadow(radius: 10)
                    )
                    
            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)))
                    )
            })
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 3.0)
                    )
            })
        }
    }
}

struct ButtonsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootCamp()
    }
}
