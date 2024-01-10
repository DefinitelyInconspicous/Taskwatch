//
//  TaskView.swift
//  Taskwatch
//
//  Created by Avyan Mehra on 10/1/24.
//

import SwiftUI

struct TaskView: View {
    @Binding var taskName: String
    var body: some View {
        NavigationStack {
            
            Text("Hello")
            
            
            .navigationTitle(taskName)
            
        }
    }
}

#Preview {
    TaskView(taskName: .constant("Test Task"))
}
