//
//  Post.swift
//  swiftCourse
//
//  Created by DELMAS Olivier on 03/11/2025.
//

import SwiftUI

struct PostsView: View {
    @State var postModel: PostsModel = PostsModel()
    var body: some View {
        List(postModel.todos) { todo in
            NavigationLink(todo.title) {
                PostView(todo: todo)
            }
        }
        .task {
            await postModel.fetchTodo()
        }
        .overlay {
            if let error = postModel.error {
                Text(error.localizedDescription)
            }
        }
    }
}

#Preview {
    PostsView()
}
