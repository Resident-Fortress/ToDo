//
//  ContentView.swift
//  ToDo
//
//  Created by Matthew Dudzinski on 9/18/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment (\.modelContext) var context
    @Query var tasks:Array<Task> = []
    @State var enteredTask = ""
    var body: some View {
        HeaderView(tasks: $tasks)
        HStack{
            TextField("Enter a task", text: $enteredTask)
            Button {
                let task = Task(nameOfTask: enteredTask)
                context.insert(task)
                enteredTask = ""
            } label: {
                Text("+")
            }

        }
        List {
            ForEach(tasks) { task in
                Text("\(task.nameOfTask)")
            }
            .onDelete(perform: {IndexSet in
                for index in IndexSet {
                    context.delete(tasks[index])
                }})
            }
           
    }
}

//struct HeaderView: View {
//    @Binding var tasks:Array<Task>
//    @Binding var heading:View
//    @State var enteredString = ""
//    var body: some View {
//        HStack{
//            TextField("Enter a task", text: $enteredString)
//                .textFieldStyle(.roundedBorder)
//                .frame(width: 250, alignment: .leading)
//            Button(action: {
//                let newTask = Task(nameOfTask: enteredString)
//                tasks.append(newTask)
//                enteredString = ""
//            }, label: {
//                Image(systemName: "")
//            })
//        }
//    }
//}
//
