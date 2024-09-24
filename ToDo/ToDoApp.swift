//
//  ToDoApp.swift
//  ToDo
//
//  Created by Matthew Dudzinski on 9/18/24.
//

import SwiftUI
import SwiftData
@main
struct ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Task.self)
    }
}
