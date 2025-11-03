//
//  PostView.swift
//  swiftCourse
//
//  Created by DELMAS Olivier on 03/11/2025.
//

import SwiftUI

struct PostView: View {
    let todo: Todo
    
    var body: some View {
        List {
            Text("id: \(todo.id)")
            Text("title: \(todo.title)")
            Text("completed: \(todo.completed)")
        }
    }
}

#Preview {
    PostView(todo: Todo(id: 1, title: "Test Todo", completed: false))
}
