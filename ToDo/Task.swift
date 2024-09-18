//
//  Task.swift
//  ToDo
//
//  Created by Matthew Dudzinski on 9/18/24.
//

import SwiftUI
import SwiftData


@Model
class Task: Hashable {
    var nameOfTask:String
    
    init(nameOfTask: String) {
        self.nameOfTask = nameOfTask
    }
}
