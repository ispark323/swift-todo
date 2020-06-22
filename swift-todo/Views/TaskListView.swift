//
//  ContentView.swift
//  swift-todo
//
//  Created by Sungmin on 2020/06/22.
//  Copyright © 2020 asobi-ios. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    let tasks = testDataTasks
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(tasks) { task in
                    TaskCell(task: task)
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("Add New Task")
                    }
                }.padding()
            }.navigationBarTitle("Tasks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

struct TaskCell: View {
    let task: Task
    
    var body: some View {
        HStack {
            Image(systemName: "circle")
                .resizable()
                .frame(width: 20, height: 20)
            VStack {
                Text(task.title)
            }
        }
    }
}
