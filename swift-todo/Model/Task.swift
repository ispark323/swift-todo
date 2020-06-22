//
//  Task.swift
//  swift-todo
//
//  Created by Sungmin on 2020/06/22.
//  Copyright © 2020 asobi-ios. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var completed: Bool
}

#if DEBUG
let testDataTasks = [
    Task(title: "Implement the UI", completed: true),
    Task(title: "Connect to Firebase", completed: false),
    Task(title: "??", completed: false),
    Task(title: "Profit!!", completed: false)
]
#endif
