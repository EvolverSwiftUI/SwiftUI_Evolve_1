//
//  TextEditorBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

import SwiftUI

struct TextEditorBootCamp: View {
    
    @State var textEditorText: String = "This is starting text..."
    @State var saveText: String = ""

    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .cornerRadius(10)
                Button(action: {
                    saveText = textEditorText
                }, label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(saveText)
                
                Spacer()
            }
            .padding()
            .background(Color.green)
            .navigationTitle("TextEditor BootCamp")
        }
    }
}

struct TextEditorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootCamp()
    }
}
