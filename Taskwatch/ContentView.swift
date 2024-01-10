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
    @State var taskTime: String
    func taskIsHour(time: Int) -> String {
        taskHour = Int(time / 60)
        taskMin = Int(time % 60)
        taskTime = String(taskHour) + " h " + String(taskMin) + " min"
        return taskTime
        
    }
    var body: some View {
        @State var taskList: [theTask] = [
            theTask(taskName: "Do Homework", taskDuration: 15, taskDesc: "Math worksheet 1", taskTimeElapsed: 0),
            
            theTask(taskName: "Clean my room", taskDuration: 75, taskDesc: "Clean table, bed and cabinet", taskTimeElapsed: 0),
        
        ]
        NavigationStack {
            List {
                ForEach($taskList, id: \.id) { currentTask in
                    NavigationLink {
                        TaskView(taskName: currentTask.taskName)
                    } label: {
                        HStack {
                            Text(currentTask.taskName.wrappedValue)
                            Spacer()
                            if currentTask.taskDuration.wrappedValue < 60 {
                                Text(String(currentTask.taskDuration.wrappedValue) + " min")
                            }
                            else {
                                Text(taskIsHour(time: currentTask.taskDuration.wrappedValue))
                            }
                        }
                    }
                }
            }
            .navigationTitle("Taskwatch")
            .navigationBarTitleDisplayMode(.large)
        }
        .padding()
    }
}

#Preview {
    ContentView(taskHour: 0, taskMin: 0, taskTime: "")
}
