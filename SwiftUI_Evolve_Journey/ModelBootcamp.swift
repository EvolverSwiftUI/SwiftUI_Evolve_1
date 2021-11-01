//
//  ModelBootcamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/31/21.
//

import SwiftUI

struct User: Identifiable {
    
    var id: String = UUID().uuidString
    let displayName: String
    let username: String
    let followers: Int
    let isVerified: Bool
    
    static let users: [User] = [
        User(displayName: "Nick", username: "nick1996", followers: 100, isVerified: true),
        User(displayName: "Emily", username: "emily2014", followers: 54, isVerified: false),
        User(displayName: "Samanta", username: "sam_007", followers: 40, isVerified: false),
        User(displayName: "Chris", username: "chris.5678", followers: 500, isVerified: true)
    ]
}

struct ModelBootcamp: View {
    
    @State var data: [String] = [
        "Nick", "Emily", "Samanta", "Chris"
    ]
    
    @State var users: [User] = User.users
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.username)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followers)")
                                .font(.headline)
                            Text("followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct CustomDatatypeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
