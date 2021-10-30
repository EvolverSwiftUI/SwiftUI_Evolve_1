//
//  PopoverBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// sheets
// animations
// transitions

// SwiftUI Bootcamp #29:
// How to add a popover segue (using sheet vs transition vs offset animation)

import SwiftUI

struct PopoverBootCamp: View {
    
    @State var showView: Bool =  false
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            
            VStack  {
                Button(action: {
                    showView.toggle()
                }, label: {
                    Text("Button")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white.cornerRadius(10))
                })
                                
                Spacer()
            }
             // METHOD 1 - SHEET
//            .sheet(isPresented: $showView, content: {
//                NewSecondView()
//            })
            
            // METHOD 2 - TRANSITION + Add or Remove New View onto View hierarchy
//            ZStack {
//                if showView {
//                    NewSecondView(showView: $showView)
//                        .transition(.move(edge: .bottom))
//                        .animation(.easeInOut)
//                }
//            }
//            .zIndex(2.0)
//            .onTapGesture {
//                showView.toggle()
//            }
            
           // METHOD 3 - ANIMATION + OFFSET (Using the existing UI Element(View) by offsetting, so no need to use transition effect.)
            NewSecondView(showView: $showView)
                .offset(y: showView ? 0 : UIScreen.main.bounds.height )
                .animation(.spring())
                .onTapGesture {
                    showView.toggle()
                }
            
        }
    }
}

struct NewSecondView: View {
    
//    @Environment(\.presentationMode) var presentationMode
    @Binding var showView: Bool
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button(action: {
                // presentationMode.wrappedValue.dismiss()
                showView.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })

        }
    }
}
struct PopoverBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootCamp()
//        NewSecondView()
    }
}
