//
//  ContentView.swift
//  Taskwatch
//
//  Created by Avyan Mehra on 9/1/24.
//

import SwiftUI
struct theTask: Identifiable {
    var id = UUID()
    var taskName: String
    var taskDuration: Int
    var taskDesc: String
    var taskTimeElapsed: Int
}

struct ContentView: View {
    @State var taskHour: Int
    @State var taskMin: Int
    func taskIsHour(time: Int) {
        taskHour = Int(time / 60)
        taskMin = (time % 60)
        return
    }
    var body: some View {
        @State var taskList: [theTask] = [
            theTask(taskName: "Do Homework", taskDuration: 15, taskDesc: "Math worksheet 1", taskTimeElapsed: 0),
            
            theTask(taskName: "Clean my room", taskDuration: 60, taskDesc: "Clean table, bed and cabinet", taskTimeElapsed: 0),
        
        ]
        NavigationView {
            List {
                ForEach($taskList, id: \.id) { currentTask in
                    
                    HStack {
                        Text(currentTask.taskName.wrappedValue)
                        Spacer()
                        if currentTask.taskDuration.wrappedValue < 60 {
                            Text(String(currentTask.taskDuration.wrappedValue) + " min")
                        }
                        else {
                            taskIsHour(time: currentTask.taskDuration.wrappedValue)
                           
                            Text(String(taskHour) + " h" + String(taskMin) + " min")
                        }
                    }
                }
            }
            .navigationTitle("Taskwatch")
        }
        .padding()
    }
}

#Preview {
    ContentView(taskHour: 0, taskMin: 0)
}
