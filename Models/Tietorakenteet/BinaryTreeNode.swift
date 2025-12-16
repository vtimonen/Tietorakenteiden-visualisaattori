//
//  BinaryTreeNode.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 17.11.2025.
//

import Foundation
import Combine

class BinaryTreeNode<T>: ObservableObject, Identifiable {
    
    // Solmun ID
    let id = UUID()
    
    // T = mikä tahansa muuttujatyyppi
    let value: T

    // Published = näkymä päivittyy jos left tai right muuttuu
    @Published var left: BinaryTreeNode<T>?
    @Published var right: BinaryTreeNode<T>?

    init(_ value: T, left: BinaryTreeNode<T>? = nil, right: BinaryTreeNode<T>? = nil) {
        self.value = value
        self.left = left
        self.right = right
    }
}


