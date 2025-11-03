//
//  ProfileView.swift
//  swiftCourse
//
//  Created by DELMAS Olivier on 03/11/2025.
//

import SwiftUI

struct ProfilView: View {
    @State var profilContent = ProfilContent(
        firstname: "john",
        lastname: "Doe",
        description: "Hey ! i am John Doe, a web developper learning swift for educationnal purposes. If you are a lonely woman, it would be my pleasure to satisfy you darling."
    )
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Profile")
                .font(.title)
                .bold()
            VStack(alignment: .center, spacing: 10) {
                Image("avatar")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                VStack(alignment: .center, spacing: 10){
                    HStack(alignment: .center, spacing: 50) {
                        Spacer()
                        VStack(alignment: .center, spacing: 5) {
                            Text("Firstname")
                                .bold()
                            Text(profilContent.firstname)
                                .lineLimit(1)
                        }
                        
                        VStack(alignment: .center, spacing: 5) {
                            Text("Lastname")
                                .bold()
                            Text(profilContent.lastname)
                                .lineLimit(1)
                        }
                        Spacer()
                    }
                    
                    
                    VStack(alignment: .center, spacing: 5) {
                        Text("Description")
                            .bold()
                        Text(profilContent.description)
                            .multilineTextAlignment(.leading)
                    }
                }
            }

            Button("Modifier") {}
                .buttonStyle(.borderedProminent)
        }
        .padding()
        Spacer()
    }
}

#Preview {
    ProfilView()
}
