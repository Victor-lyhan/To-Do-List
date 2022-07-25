//
//  AddItemView.swift
//  To Do List
//
//  Created by Victor Han on 2022/7/25.
//

import SwiftUI

struct AddItemView: View {
    @ObservedObject var toDoList: ToDoList
    @State private var priority = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let priorities = ["High", "Middium", "Low"]
    var body: some View {
        NavigationView{
            Form{
                Picker("Priority", selection: $priority){
                    ForEach(Self.priorities, id:\.self){
                        priority in
                        Text(priority)
                    }
                }
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(toDoList:ToDoList())
    }
}
