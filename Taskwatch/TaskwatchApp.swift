//
//  TaskwatchApp.swift
//  Taskwatch
//
//  Created by Avyan Mehra on 9/1/24.
//

import SwiftUI

@main
struct TaskwatchApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(taskHour: 0, taskMin: 0, taskTime: "")
        }
    }
}
