//
//  acc.swift
//  Back2fest
//
//  Created by Quentin 🕺🏽 on 07/11/2024.
//

import Foundation
import SwiftUI

struct AccView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                Text("🎉 Bienvenue au Festival  Back2Fest 🎉")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)

                //IMG à changer
                Image(systemName: "music.note.house.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.accentColor)
                    .padding(.bottom, 20)
                
                
                Text("On va faire l'acceuil ici,à mettre sur cette page:les dates,les artistes,les informations pratiques,les billets,peut même refaire des pages derrière")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
               
                
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Informations Pratiques")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.top, 30)
                    
                    Text("📍 La carte").font(.headline)
                    Text("📅 Les dates")
                    Text("🎟️ Les billets")
                    Text("🎤 Les artistes")
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
            }
        }
        .navigationTitle("Accueil")
    }
}

// Aperçu pour Xcode
#Preview {
    AccView()
}
