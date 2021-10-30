//
//  ShapesBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/25/21.
//

// SwiftUI Bootcamp #3:
// About Shapes

import SwiftUI

struct ShapesBootCamp: View {
    
    var body: some View {
        
        //        Circle()
        //            .fill(Color.orange)
        //            .foregroundColor(.blue)
        //            .stroke()
        //            .stroke(Color.red)
        //            .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10]))
        //            .stroke(Color.blue, lineWidth: 10.0)
        //            .stroke(Color.red, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [40]))
        //            .stroke(Color.red, style: StrokeStyle(lineWidth: 30, lineCap: .square, dash: [40]))
        //            .trim(from: 0.2, to: 1.0)
        //            .stroke(Color.blue, lineWidth: 10.0)
        
        //        Ellipse()
        //            .fill(Color.blue)
        //            .stroke()
        //            .stroke(Color.blue, lineWidth: 30)
        //            .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10]))
        //            .trim(from: 0.2, to: 1.0)
        //            .stroke(Color.blue, lineWidth: 10.0)
        //           .frame(width: 200, height: 100)
        
        //        Capsule(style: .continuous)
        //                    .fill(Color.blue)
        //                    .stroke()
        //                    .stroke(Color.blue, lineWidth: 30)
        //                    .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10]))
        //                    .trim(from: 0.2, to: 1.0)
        //                    .stroke(Color.blue, lineWidth: 10.0)
        //                   .frame(width: 200, height: 100)
        
        //        Rectangle()
        //            .fill(Color.blue)
        //            .stroke()
        //            .stroke(Color.blue, lineWidth: 30)
        //            .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10]))
        //            .trim(from: 0.2, to: 1.0)
        //            .stroke(Color.blue, lineWidth: 10.0)
        //            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.blue)
        //             .stroke()
        //             .stroke(Color.blue, lineWidth: 30)
        //             .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10]))
        //             .trim(from: 0.2, to: 1.0)
        //             .stroke(Color.blue, lineWidth: 10.0)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
