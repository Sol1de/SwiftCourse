//
//  PostsViewModel.swift
//  swiftCourse
//
//  Created by DELMAS Olivier on 03/11/2025.
//

import SwiftUI

@Observable
class PostsModel {
    var todos: [Todo] = []
    var error: Error?
    
    func fetchTodo() async {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            self.error = URLError(.badURL)
            return
        }
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                self.error = URLError(.badServerResponse)
                return
            }
            
            self.todos = try JSONDecoder().decode([Todo].self, from: data)
        } catch {
            self.error = error
        }
    }
}
