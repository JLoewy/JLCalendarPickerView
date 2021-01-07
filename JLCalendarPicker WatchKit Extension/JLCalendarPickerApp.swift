//
//  JLCalendarPickerApp.swift
//  JLCalendarPicker WatchKit Extension
//
//  Created by Jason Loewy on 1/6/21.
//

import SwiftUI

@main
struct JLCalendarPickerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
