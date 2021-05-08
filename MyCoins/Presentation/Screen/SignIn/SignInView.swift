//
//  SignInView.swift
//  MyCoins
//
//  Created by Roman Korostenskyi on 05.05.2021.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Text("Sign In")
                .font(.system(size: 32, design: .rounded))
                .fontWeight(.regular)
            Image("signin_bg")
                .frame(width: 330, height: 256)
                .clipShape(RoundedRectangle(cornerRadius: 12.0))
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(width: 330)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.top, 35)
            TextField("Passwword", text: $password)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(width: 330)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.top, 35)
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Submit")
                    .accentColor(Color.black)
                    .frame(width: 330, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 4, x: 0, y: 2)
                    .padding()
            })
            Button(action: {
                print("Don't have an account?")
            }, label: {
                Text("Don't have an account?")
            })
            .accentColor(Color(UIColor.separator))
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
