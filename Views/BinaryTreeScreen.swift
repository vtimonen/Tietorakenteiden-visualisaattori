//
//  BinaryTreeScreen.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 17.11.2025.
//

import SwiftUI

struct BinaryTreeScreen: View {
    
    @StateObject private var tree = BinaryTree<Int>()

    var body: some View {
        
        VStack() {
            Text("Binääripuu")
                .font(.largeTitle)
                .padding(.bottom, 15)

            // Puu näkyy jos juurisolmu on luotu
            if let root = tree.root {
                BinaryTreeView<Int>(node: root)
            } else {
                // Ohjeteksti ennen juurisolmun luomista
                Text("Paina nappia!")
            }

            // Nappi (lisää satunnaisen alkion puuhun 1-30 väliltä)
            Button("Lisää alkio") {
                tree.insert(Int.random(in: 1...30))
            }
            .buttonStyle(.borderedProminent)
            .padding(10)
            
            Text("Puuhun voi laittaa 7 juurta")
                .fontWeight(.ultraLight)
        }
    }
}
