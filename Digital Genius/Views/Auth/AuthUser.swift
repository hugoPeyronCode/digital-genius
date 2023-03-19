//
//  AuthUser.swift
//  Digital Genius
//
//  Created by Hugo Peyron on 17/03/2023.
//

import SwiftUI

struct AuthUser: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    
    var body: some View {
        VStack {
            
            // here I would like to add an image
            Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                    .offset(y: -30)
            
            VStack {
                TextField("Email", text: $email)
                    .textFieldStyle(.plain)
                    .padding(10)
                        
                    Divider()
                        
                ZStack(alignment: .trailing) {
                    
                    // si le password est isPasswordVisible true
                    if isPasswordVisible {
                        TextField("Password", text: $password)
                            .textFieldStyle(.plain)
                            .padding(10)
                            .bold()
                    } else {
                        SecureField("Password", text: $password)
                                .textFieldStyle(.plain)
                                .padding(10)
                            }
                    
                    Button(action:
                            {isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                            .foregroundColor(Color.gray.opacity(0.3))
                            .font(.system(size: 16))
                    }
                    .padding(.trailing, 8)
                    .frame(width: 30, height: 30, alignment: .trailing)

                }
                    
                    Divider()
                        
                }
                .padding(60)
                .offset(y: -30)
                .foregroundColor(.green)
                .bold()
                .autocapitalization(.none)
                
                
            VStack {
                    
                Button {
                    // do something here
                } label: {
                    Text("Sign Up")
                        .bold()
                        .frame(width: 200, height: 50)
                        .background(
                            RoundedRectangle(
                                cornerRadius: 10, style: .continuous)
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [Color(red: 0.02, green: 0.96, blue: 0.61), Color(red: 0.0, green: 0.65, blue: 0.98)]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                            )
                        ).foregroundColor(.white)
                }
                .padding()
          
                    
                Button {
                    // do something here
                } label: {
                    Text("Already have an account? Login")
                        .foregroundColor(Color(red: 0.0, green: 0.61, blue: 1.0))
                }

            }
        }
    }
}
    
struct AuthUser_Previews: PreviewProvider {
    static var previews: some View {
        AuthUser()
    }
}
