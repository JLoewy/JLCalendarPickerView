//
//  ContentView.swift
//  JLCalendarPicker WatchKit Extension
//
//  Created by Jason Loewy on 1/6/21.
//

import SwiftUI
import CalendarPickerView

struct ContentView: View {
    
    private let mediumFormatter: DateFormatter = {
        let formatter       = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    @State var showingSheet = false
    @State var activeDate = Date()
    
    var body: some View {
        
        VStack {
            
            
            Text(mediumFormatter.string(from: self.activeDate))
                .padding()
            
            Button(action: {
                self.showingSheet = true
            }, label: {
                Text("Show")
            })
        }
        .onChange(of: self.activeDate, perform: { value in
            print("OHHHH it changed: \(value)")
        })
        .sheet(isPresented: $showingSheet, content: {
            CalendarPickerView(withActiveDate: $activeDate, showingSheet: $showingSheet, showJumpButtons: true)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
