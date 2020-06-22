//
//  ContentView.swift
//  swift-todo
//
//  Created by Sungmin on 2020/06/22.
//  Copyright © 2020 asobi-ios. All rights reserved.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Image(systemName: "circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                    VStack {
                        Text("Task here")
                    }
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
