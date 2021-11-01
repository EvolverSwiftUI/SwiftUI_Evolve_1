//
//  DocumentationBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/31/21.
//

// SwiftUI Bootcamp #45:
// How to add markups and documentation to Xcode project

import SwiftUI

struct DocumentationBootCamp: View {
    
    // MARK: - PROPERTIES
    
    @State var dataArray = [
        "apples", "oranges", "bananas"
    ]
    
    @State var showAlert: Bool = false
    
    // MARK: - BODY

    // SIVARAM - Working copy - things to do:
    /*
     1. Fix title
     2. Fix alert
     */
    
    var body: some View {
        NavigationView { // Start: Nav
            ZStack {
                // background layer
                Color.red.edgesIgnoringSafeArea(.all)
                
                // foreground layer
                foregroundLayer
                .navigationBarTitle("Document Bootcamp!")
                .navigationBarItems(trailing:
                                        Button("ALERT", action: {
                                            showAlert.toggle()
                                        })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is an alert!")
                })
            } // End: ScrollView
        } // End: Nav
    }
    
    // MARK: - PRIVATE PROPERTIES
    
    /// This is the foreground layer that holds the scrollview
    private var foregroundLayer: some View {
        
        ScrollView { // Start: ScrollView
            Text("Hello")
            ForEach(dataArray, id: \.self) { item in
                Text(item)
            }
            Spacer()
        }
    }
    
    // MARK: - FUNCTIONS
    
    /// Gets an alert with a specified title
    ///
    ///
    /// This function create and returns alert. It take title as text argument,
    /// but it don't have message.
    ///
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    /// - Warning: There is no additional message in this alert
    /// - Parameter text: String, This is the title for the alert
    /// - Returns: Returns alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }

}

// MARK: - PREVIEW

struct DocumentationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootCamp()
    }
}
