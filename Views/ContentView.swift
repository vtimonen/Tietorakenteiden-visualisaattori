//
//  ContentView.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 23.10.2025.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        // Välilehtinäkymä
        TabView {
            // Pinon välilehti
            StackView()
                .tabItem {
                    Text("Pino")
                }
            // Binääripuun välilehti
            BinaryTreeScreen()
                .tabItem {
                    Text("Binääripuu")
                }
            // Jonon välilehti
            QueueView()
                .tabItem {
                    Text("Jono")
                }
        }
    }
}

