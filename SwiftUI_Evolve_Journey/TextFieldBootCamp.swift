//
//  TextFieldBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #35:
// How to use TextField

import SwiftUI

struct TextFieldBootCamp: View {
    
    @State var text: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type something here...", text: $text)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.red)
                    .font(.headline)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                Button(action: {
                    if validateText() {
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(validateText() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                })
                .disabled(!validateText())
                
                List {
                    ForEach(dataArray, id: \.self) { text in
                        Text(text)
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextFeield Bootcamp!")
        }
    }
    
    func validateText() -> Bool {
        if text.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(text)
        text = ""
    }
}

struct TextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootCamp()
    }
}
