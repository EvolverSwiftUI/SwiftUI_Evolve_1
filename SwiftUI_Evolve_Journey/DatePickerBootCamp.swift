//
//  DatePickerBootCamp.swift
//  SwiftUI_Evolve_Journey
//
//  Created by Sivaram Yadav on 10/30/21.
//

// SwiftUI Bootcamp #40:
// How to use DatePicker (and DatePickerStyle)

import SwiftUI

struct DatePickerBootCamp: View {
    
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formater = DateFormatter()
        formater.dateStyle = .short
        formater.timeStyle = .short
        formater.amSymbol = "AM"
        return formater
    }
    
    var body: some View {
        VStack {
            Text("SELECTED DATE IS: ")
            Text(dateFormatter.string(from: selectedDate))
                .font(.body)

            //DatePicker("Date Picker", selection: $selectedDate)
            //DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
//                    GraphicalDatePickerStyle()
//                    WheelDatePickerStyle()
//                    DefaultDatePickerStyle()
                )
                .padding()
        }
//        .padding()
//        .background(Color.green.cornerRadius(10))
//        .padding()
    }
}

struct DatePickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootCamp()
    }
}
