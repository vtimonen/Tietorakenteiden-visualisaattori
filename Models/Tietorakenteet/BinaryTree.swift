//
//  BinaryTree.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 8.11.2025.
//

import Foundation
import Combine

class BinaryTree<A: Equatable>: ObservableObject {
    
    // Puun juurisolmu
    @Published private(set) var root: BinaryTreeNode<A>?
    
    @Published private var juuriLaskuri: Int = 0

    init() {}

    // Lisää uuden arvon puuhun leveysjärjestyksessä
    func insert(_ value: A) {
        
        if juuriLaskuri >= 7 {
            print("Puu täynnä")
            return
        }

        let newNode = BinaryTreeNode<A>(value)

        // Jos puu on tyhjä, uusi solmu on juurisolmu
        guard let root = root else {
            self.root = newNode
            juuriLaskuri += 1
            return
        }

        // Leveysjärjestyksessä eka vapaa paikka
        var queue: [BinaryTreeNode<A>] = [root]

        while !queue.isEmpty {
            let current = queue.removeFirst()

            // Jos vasen lapsi puuttuu
            if current.left == nil {
                current.left = newNode
                juuriLaskuri += 1
                return
            } else {
                queue.append(current.left!)
            }

            // Jos oikea lapsi puuttuu
            if current.right == nil {
                current.right = newNode
                juuriLaskuri += 1
                return
            } else {
                queue.append(current.right!)
            }
        }
    }
    
    // func contains otettu pois, on tallessa
}

