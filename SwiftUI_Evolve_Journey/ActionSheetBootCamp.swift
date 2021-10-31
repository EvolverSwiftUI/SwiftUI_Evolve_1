//
//  ActionSheetBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #33:
// How to use ActionSheet (and how to make .actionSheet dynamic)

import SwiftUI

struct ActionSheetBootCamp: View {
    
    @State var showActionSheet: Bool = false
    @State var bgColor: Color = .blue
    @State var actionSheetOptions: ActionSheetOptions = .isOtherPost

    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    showActionSheet.toggle()
                    actionSheetOptions = .isMyPost
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
        .background(bgColor.edgesIgnoringSafeArea(.all))
        
//        ZStack {
//            bgColor
//                .edgesIgnoringSafeArea(.all)
//
//            Button("Button") {
//                showActionSheet.toggle()
//            }
//            .actionSheet(isPresented: $showActionSheet) {
//                getActionSheet()
//            }
//        }
        
    }
    
    func getActionSheet() -> ActionSheet {
        
        let cancel: ActionSheet.Button = .cancel()
        let edit:  ActionSheet.Button = .default(Text("Edit")) {
            bgColor = .yellow
        }
        let share:  ActionSheet.Button = .default(Text("Share")) {
            bgColor = .green
        }
        let report:  ActionSheet.Button = .destructive(Text("Report")) {
            bgColor = .orange
        }
        let delete:  ActionSheet.Button = .destructive(Text("Delete")) {
            bgColor = .red
        }

        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet(
                title: Text("This is Title"),
                message: Text("This is Message"),
                buttons: [share, edit, report, delete, cancel])
        case .isOtherPost:
            return ActionSheet(
                title: Text("This is Title"),
                message: Text("This is Message"),
                buttons: [report, share, cancel])
        }
        
//        let buttonDefault: ActionSheet.Button = .default(Text("Default")) {
//            bgColor = .green
//        }
//        let delete: ActionSheet.Button = .destructive(Text("Delete")) {
//            bgColor = .red
//        }
//        let cancel: ActionSheet.Button = .cancel()
//        return ActionSheet(
//            title: Text("This is title"),
//            message: Text("This is message!!"),
//            buttons: [buttonDefault, buttonDefault, buttonDefault, buttonDefault, delete, cancel])
//        return ActionSheet(title: Text("This is the title"))
    }
}

struct ActionSheetBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootCamp()
    }
}
