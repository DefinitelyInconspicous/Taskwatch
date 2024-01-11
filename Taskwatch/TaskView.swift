//
//  TaskView.swift
//  Taskwatch
//
//  Created by Avyan Mehra on 10/1/24.
//

import SwiftUI

struct TaskView: View {
    @Binding var taskName: String
    @Binding var taskDesc: String
    var body: some View {
        NavigationStack {
            
            Text(taskDesc)
                .font(.title3)
            
            
            .navigationTitle(taskName)
            Spacer()
        }
    }
}

#Preview {
    TaskView(taskName: .constant("Test Task"), taskDesc: .constant("Test Desc"))
}
