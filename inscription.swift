//
//  inscription.swift
//  Back2fest
//
//  Created by Quentin 🕺🏽 on 07/11/2024.
//

import Foundation
import SwiftUI

struct SignupView: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        VStack(spacing: 20) {
           
            Text("Inscription")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
          
            TextField("Nom d'utilisateur", text: $username)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .autocapitalization(.none)
            
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
            
            
            SecureField("Confirmer le mot de passe", text: $confirmPassword)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
            
            
            Button(action: {
                
                if username.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty {
                    alertMessage = "Veuillez remplir tous les champs"
                    showAlert = true
                } else if password != confirmPassword {
                    alertMessage = "Les mots de passe ne correspondent pas"
                    showAlert = true
                } else {
                    
                    print("Inscription réussie avec email: \(email)")
                }
            }) {
                Text("S'inscrire")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
            }
            .padding(.top, 20)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Erreur"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }

            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

struct pipi: View {
    var body: some View {
        SignupView()
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        pipi()
    }
}
