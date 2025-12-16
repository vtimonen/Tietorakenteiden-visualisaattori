//
//  StackView.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 11.11.2025.
//

import SwiftUI

struct StackView: View {
    
    // Pino-olio || StateObject mahdollistaa näkymän muuttumisen
    @StateObject private var stack = Stack<Int>()

    var body: some View {
        VStack(spacing: 0) {
            // Otsikko
            Text("Pino")
                .font(.largeTitle)
                .padding(.bottom, 15)

            // Pinon sisällön näyttämisen logiikka. Reversed, koska muuten pino olisi väärinpäin.
            // Enumerated, koska tarvitaan uniikki id for eachille.
            ForEach(Array(stack.items.reversed().enumerated()), id: \.offset) { index, item in
                Text("│ \(item)")
                    .font(.system(.body, design: .monospaced))
                    .padding(5)
            }

            Text("└───")
                .font(.system(.body, design: .monospaced))

            HStack {
                // Push nappi (lisää alkion 1-99 väliltä)
                Button("Push") {
                    let numba = Int.random(in: 1...99)
                    stack.push(numba)
                }
                .buttonStyle(.borderedProminent)

                // Pop nappi (poistaa päällimmäisen alkion)
                Button("Pop") {
                    _ = stack.pop()
                }
                
            }
            .padding(.top, 12)
        }
        .padding()
    }
}
