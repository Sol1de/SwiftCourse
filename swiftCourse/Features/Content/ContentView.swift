//
//  ContentView.swift
//  swiftCourse
//
//  Created by DELMAS Olivier on 03/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            HStack( alignment: .top, spacing: 20) {
                NavigationLink("Aler au profile") {
                    ProfilView()
                }
                NavigationLink("Voir les listes") {
                    PostsView()
                }
            }
            .navigationTitle("Accueil")
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Click me \(viewModel.counter)"){
                viewModel.counter += 1
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
