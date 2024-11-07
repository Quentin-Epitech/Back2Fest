//
//  ContentView.swift
//  Back2fest
//
//  Created by Quentin 🕺🏽 on 06/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "person")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Bienvenue sur Back2fest!")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 40)
                
                NavigationLink(destination: LoginView()) {
                    Text("Se connecter")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.black)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: SignupView()) {
                    Text("S'inscrire")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.black)
                        .cornerRadius(8)
                }
                
                
                NavigationLink(destination: AccView()) {
                    Text("Continuer en tant qu'invité")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .underline()
                        .padding(.top, 10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
