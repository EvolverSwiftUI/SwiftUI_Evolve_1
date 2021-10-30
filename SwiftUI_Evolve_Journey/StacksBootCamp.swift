//
//  StacksBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/27/21.
//

// SwiftUI Bootcamp #10 :
// How to use VStack, HStack, and ZStack

import SwiftUI

struct StacksBootCamp: View {
    var body: some View {
        
        // VStack - Vertically arrange
        // HStack - Horizontally arrange
        // ZStack - zIndex (Back to Frond) Depth base arrangement
        
        // MARK: ZStack
//        ZStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 130, height: 130)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//        }
 
        
        // MARK: VStack

//        VStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//        }

    
        // MARK: HStack
//        HStack {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//        }

        
        // MARK: VStack with Alignmnet and Spacing
/*
        So far covered tutorials we have frame aligmnets
        in 4 ways...
                    1. Frame
                    2. Background
                    3. Overlay
                    4. Stacks (VStack, HStack, ZStack)
 */
        
//        VStack(alignment: .trailing, spacing: 0) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 130, height: 130)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//        }

        // MARK: HStack with Alignmnet and Spacing
        
//        HStack(alignment: .top, spacing: 0) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 130, height: 130)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//        }

        
        // MARK: ZStack with Alignmnet and Spacing
        
//        ZStack(alignment: .topTrailing) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 130, height: 130)
//
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//        }

        
        // MARK: Combine VStack, HStack and ZStack
        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500)
//            VStack(alignment: .leading) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.gray)
//                        .frame(width: 25, height: 25)
//                    Rectangle()
//                        .fill(Color.orange)
//                        .frame(width: 100, height: 100)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
        
        // MARK: Using Stacks
        
//        VStack(spacing: 10) {
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Items in your cart:")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        
        // MARK: zStacks works as backgrounds of views
        // MARK: just elaborated below
        
        // NOTE 1: for simple 1,2,3 layers use backgrounds and overlays with their views.
        // NOTE 2 : if it is more complex with that particular view design meaning with more layers of complex then go with ZStacks instead of backgrounds and overlays.
        
        
        VStack(spacing: 60) {
            ZStack {
                Circle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StacksBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootCamp()
    }
}
