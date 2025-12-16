//
//  BinaryTreeView.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 17.11.2025.
//

import SwiftUI

struct BinaryTreeView<T: CustomStringConvertible>: View {
    
    @ObservedObject var node: BinaryTreeNode<T>
    
    // Solmujen väliset etäisyydet
    let tila: CGFloat = 40
    

    var body: some View {
        VStack(spacing: tila) {
            // Solmun arvon muotoilu
            Text(node.value.description)
                .padding(12)    // Pallon koko
                .background(Circle().fill(Color.red.opacity(1)))    // Taustaväri
                .overlay(Circle().stroke(Color.white, lineWidth: 1))    // Borderi
            
            // Lasten solmujen näyttäminen vaakatasossa
            HStack(alignment: .top, spacing: tila) {
                // Vasemman lapsen näkymä tai tyhjä
                if let left = node.left {
                    BinaryTreeView(node: left)
                } else {
                    Spacer().frame(width: 10, height: 10)
                }

                // Oikean lapsen näkymä tai tyhjä
                if let right = node.right {
                    BinaryTreeView(node: right)
                } else {
                    Spacer().frame(width: 10, height: 10)
                }
            }
        }
    }
}
