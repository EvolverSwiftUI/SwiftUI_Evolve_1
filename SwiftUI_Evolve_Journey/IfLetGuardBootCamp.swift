//
//  IfLetGuardBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/31/21.
//

// SwiftUI Bootcamp #47:
// How to use "if let" and "guard" statements to safely unwrap optionals

import SwiftUI

struct IfLetGuardBootCamp: View {
    
    @State var currentUserId: String? = "testuser123"
    @State var displayText: String?
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Here we are practicing safe code!")
                if let text = displayText {
                    Text(text)
                        .font(.headline)
                }
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Bootcamp")
        }
        .onAppear {
            loadData2()
        }
    }
    
    fileprivate func loadData() {
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! - User Id: \(userId)"
                isLoading = false
            }
        }
        else {
            displayText = "Error: there is no user id."
        }
    }
    
    fileprivate func loadData2() {
        
        guard let userId = currentUserId else {
            displayText = "Error: there is no user id."
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! - User Id: \(userId)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootCamp()
    }
}
