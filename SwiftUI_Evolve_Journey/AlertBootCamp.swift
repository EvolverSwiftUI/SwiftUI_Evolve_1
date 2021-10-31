//
//  AlertBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #32:
// How to use Alerts (and how to make the .alert() modifier dynamic)


import SwiftUI

struct AlertBootCamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "ERROR IN UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "ERROR IN LOGIN USER"
//                    alertMessage = "The user name does not exist"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert){
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("Error in upload video"))
        case .success:
            return Alert(
                title: Text("Successfully uploadded video"),
                dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Error in upload video"))
        }
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("This is where describe the error."),
//            primaryButton: .destructive(Text("DELETE"), action: {
//                backgroundColor = Color.red
//            }),
//            secondaryButton: .cancel()
//        )
        //return Alert(title: Text("This is an error alert!"))
    }
}

struct AlertBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootCamp()
    }
}
