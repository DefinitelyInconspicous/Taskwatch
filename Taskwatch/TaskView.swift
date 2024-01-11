//
//  TaskView.swift
//  Taskwatch
//
//  Created by Avyan Mehra on 10/1/24.
//

import SwiftUI

struct TaskView: View {
    @State var taskHour: Int = 0
    @State var taskMin: Int = 0
    @Binding var taskName: String
    @Binding var taskDesc: String
    @Binding var taskTime: Int
    var body: some View {
        NavigationStack {
            
            Text(taskDesc)
                .font(.title3)
            .padding()
            ZStack {
                Rectangle()
                    .fill(.gray)
                    .frame(width: 350, height: 100)
                    .cornerRadius(10)
                HStack {
                    Circle()
                        .fill(.red)
                        .frame(width: 60, height: 60)
                    Circle()
                        .fill(.blue)
                        .frame(width: 60, height: 60)
                }
                
            }
            
            
            
            .navigationTitle(taskName)
            Spacer()
        }
    }
}

#Preview {
    TaskView(taskName: .constant("Test Task"), taskDesc: .constant("Test Desc"))
}
