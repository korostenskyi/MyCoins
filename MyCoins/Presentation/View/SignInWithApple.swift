//
//  SignInWithApple.swift
//  MyCoins
//
//  Created by Roman Korostenskyi on 21.11.2020.
//

import SwiftUI
import AuthenticationServices

final class SignInWithApple: UIViewRepresentable {
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        return ASAuthorizationAppleIDButton()
    }

    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) { }
}

