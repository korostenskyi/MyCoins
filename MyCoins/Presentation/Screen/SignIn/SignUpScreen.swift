//
//  SignInScreen.swift
//  MyCoins
//
//  Created by Roman Korostenskyi on 21.11.2020.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            Text("Create an account")
                .font(.system(size: 32, design: .rounded))
                .fontWeight(.regular)
            
            Image("signup_bg")
                .resizable()
                .frame(width: 330, height: 256)
                .cornerRadius(12)
            
            TextField(
                "Email",
                text: $email,
                onEditingChanged: { isEditing in self.isEditing = isEditing },
                onCommit: { print("Email commit") }
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .frame(width: 330)
            .padding(.top, 35)
            
            SecureField(
                "Password",
                text: $password,
                onCommit: { print("Password commit") }
            )
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .frame(width: 330)
            .padding(.top, 15)
            
            Spacer()
            
            Button(action: {
                print("Already have an account?")
            }, label: {
                Text("Already have an account?")
            })
            .accentColor(Color(UIColor.separator))
            
            Button(action: {
                signIn(email: email, password: password)
            }, label: {
                Text("Submit")
                    .accentColor(Color.black)
                    .frame(width: 330, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 4, x: 0, y: 2)
                    .padding()
            })
        }
    }
    
    private func signIn(email: String, password: String) {
        print("Email \(email), password \(password)")
    }
}

#if DEBUG
struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
#endif
