//
//  UIPlayerView.swift .swift
//  Back2fest
//
//  Created by Quentin 🕺🏽 on 07/11/2024.
//

import Foundation


import Foundation
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showAlert = false

    var body: some View {
        VStack(spacing: 20) {
            
            Text("Connexion")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)

            TextField("Email", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            SecureField("Mot de passe", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            Button(action: {
                
                if email.isEmpty || password.isEmpty {
                    showAlert = true
                } else {
                    
                    print("Connexion réussie avec email: \(email)")
                }
            }) {
                Text("Se connecter")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
            }
            .padding(.top, 20)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Erreur"), message: Text("Veuillez remplir tous les champs"), dismissButton: .default(Text("OK")))
            }
            
            Button(action: {
                
                print("Mot de passe oublié")
            }) {
                Text("Mot de passe oublié ?")
                    .foregroundColor(.black)
                    .padding(.top, 10)
            }

            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

struct caca: View {
    var body: some View {
        LoginView()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        caca()
    }
}
