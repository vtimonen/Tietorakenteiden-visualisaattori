//
//  Stack.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 8.11.2025.
//

import Foundation
import Combine

class Stack<T>: ObservableObject {
    // Taulukko jossa alkiot säilytetään
    @Published private var elements: [T] = []

    var items: [T] {
        elements
    }

    // Lisää uuden arvon pinon päällimmäiseksi
    func push(_ value: T) {
        elements.append(value)
    }

    // Poistaa pinon päällimmäisen arvon
    func pop() -> T? {
        return elements.popLast()
    }
}

