//
//  SheetsBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/29/21.
//

// SwiftUI Bootcamp #28:
// How to use Sheets and FullScreenCovers

import SwiftUI

struct SheetsBootCamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.green)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white.cornerRadius(10))
            })
        }
        .sheet(isPresented: $showSheet) {
        // DO NOT ADD CONDITIONAL LOGIC
            SecondView()
        }
//        .fullScreenCover(isPresented: $showSheet, content: {
//            SecondView()
//        })

    }
}


struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
            })
        }
    }
}









struct SheetsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootCamp()
//        SecondView()
    }
}
