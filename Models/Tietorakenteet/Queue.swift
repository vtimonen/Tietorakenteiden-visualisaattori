//
//  Queue.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 4.12.2025.
//

import Combine
import Foundation

class Queue<T>: ObservableObject {
    
    // Taulukko alkioille
    @Published private var elements: [T] = []
    
    var items: [T] {
        elements
    }
    
    // Enqueue lisää uuden arvon jonon perään
    func enqueue(_ arvo: T) {
        elements.append(arvo)
    }
    
    // Poistaa ensimäisen arvon jonosta
    func dequeue() -> T? {
        
        // Ehkä tarpeellinen
        if elements.isEmpty {
            return nil
        }
        return elements.removeFirst()
    }
}
