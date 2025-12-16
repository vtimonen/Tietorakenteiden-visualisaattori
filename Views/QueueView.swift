//
//  QueueView.swift
//  tietorakenteiden-visualisaattori
//
//  Created by Valtteri Timonen on 4.12.2025.
//

import SwiftUI

struct QueueView: View {
    
    //Jono-olio
    @StateObject private var jono = Queue<Int>()
    
    var body: some View {
        VStack(spacing: 0) {
            // Otsikko
            Text("Jono")
                .font(.largeTitle)
                .padding(.bottom, 15)
            Text("Loppu")
                .bold()
                .padding(.bottom, 5)
            
            // Jonon sisältö
            ForEach(jono.items.enumerated().reversed(), id: \.offset) { index, item in
                HStack {
                    Text("│ \(item)")
                        .font(.system(.body, design: .monospaced))
                        .padding(5)
                }
            }
            
            Text("└───")
                .font(.system(.body, design: .monospaced))
            Text("Alku")
                .bold()
            
            HStack {
                // Enqueue nappi (lisää alkion jonon perään väliltä 1-99)
                Button("Enqueue") {
                    let numba = Int.random(in: 1...99)
                    jono.enqueue(numba)
                }
                .buttonStyle(.borderedProminent)

                // Dequeue nappi (poistaa jonon ensimäisen alkion)
                Button("Dequeue") {
                    _ = jono.dequeue()
                }
            }
            .padding(.top, 15)
        }
        .padding()
    }
}
