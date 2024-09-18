//
//  ContentView.swift
//  ToDo
//
//  Created by Matthew Dudzinski on 9/18/24.
//

import SwiftUI

struct ContentView: View {
    @State var tasks:Array<Task> = []
    var body: some View {
        HeaderView(tasks: $tasks)
        List(tasks, id: \.self){ tasks in
            Text("\(tasks.nameOfTask)")
            }
           
    }
}
