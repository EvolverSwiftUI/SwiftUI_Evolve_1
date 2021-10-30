//
//  NavigationViewBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #30:
// How to use NavigationView and NavigationLink

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                NavigationLink("ONE",
                               destination: MyOtherScreen())
                Text("TWO")
                Text("THREE")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        })
                    .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
                .navigationTitle("Orange Screen")
//                .navigationBarHidden(true)
            
            
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("click here", destination: Text("3rd Screen"))
            }
        }
    }
}

struct NavigationViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootCamp()
    }
}
