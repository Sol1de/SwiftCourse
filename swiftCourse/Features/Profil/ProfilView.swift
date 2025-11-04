import SwiftUI

struct ProfilView: View {
    @State var profilContent = ProfilContent(
        firstname: "john",
        lastname: "Doe",
        description: "Hey ! i am John Doe, a web developper learning swift for educationnal purposes. If you are a lonely woman, it would be my pleasure to satisfy you darling.",
        contact: Contact(
            phone: "+33613667868",
            email: "johndoe@example.com"
        )
    )
    
    var body: some View {
        ScrollView() {
            VStack(alignment: .center, spacing: 10) {
                Text("Profile")
                    .font(.title)
                    .bold()
                VStack(alignment: .center, spacing: 10) {
                    ZStack(alignment: .top) {
                        Image(.backgroundGradient)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                        
                        Image(.avatar)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .padding(.top, 70)
                    }
                    
                    VStack(alignment: .center, spacing: 10){
                        HStack(alignment: .center, spacing: 5) {
                            Spacer()
                            Text(profilContent.firstname)
                                .lineLimit(1)
                                .bold()
                            
                            Text(profilContent.lastname)
                                .lineLimit(1)
                                .bold()
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        HStack(alignment: .center, spacing: 5) {
                            Spacer()
                            
                            Button(action: {
                                let email = "mailto:\(profilContent.contact.email)"
                                if let url = URL(string: email) {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Image(.mail)
                                    .resizable()
                                    .frame(width: 24, height: 24)
                            }
                            
                            Button(action: {
                                let phone = "tel:\(profilContent.contact.phone)"
                                if let url = URL(string: phone) {
                                    UIApplication.shared.open(url)
                                }
                            }) {
                                Image(.phone)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                            
                            Spacer()
                        }
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Description")
                                .bold()
                            Text(profilContent.description)
                                .multilineTextAlignment(.leading)
                        }
                        .padding()
                    }
                }

                Button("Modifier") {}
                    .buttonStyle(.borderedProminent)
            }
        }
    }
}

#Preview {
    ProfilView()
}
