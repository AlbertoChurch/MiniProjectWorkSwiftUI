//
//  Ordine.swift
//  Login project
//
//  Created by s12 on 21/10/25.
//

import SwiftUI

struct OrdinePage: View {
    
    var lista: [Ordine] = [
            Ordine(
                id: 1,
                dataOrdine: "2023-11-11",
                ordineOggetti: [
                    OrdineOggetti(
                        id: 1,
                        oggetto: Oggetto(
                            id: 2,
                            fornitore: "silvio",
                            nomeOggetto: "Oggettoprova",
                            tipoOggetti: [
                                TipoOggetto(id: 1, tipoOggetto: "Tipo1"),
                                TipoOggetto(id: 2, tipoOggetto: "Tipo2")
                            ]
                        ),
                        quantita: 3
                    ),
                    OrdineOggetti(
                        id: 2,
                        oggetto: Oggetto(
                            id: 1,
                            fornitore: "mario",
                            nomeOggetto: "Oggetto",
                            tipoOggetti: [
                                TipoOggetto(id: 2, tipoOggetto: "Tipo2")
                            ]
                        ),
                        quantita: 5
                    )
                ]
            )
        ]
    
    // Definizione delle strutture dati



    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 300, height: 300)
                .padding(.top)
            
            HStack {
                Button("filtro") { print("Filtro") }
                Spacer()
                Text("lista ordini").font(.headline)
                Spacer()
                Button(action: { print("Aggiungi premuto") }) {
                    Image(systemName: "plus")
                        .font(.title2)
                        .padding(6)
                }
            }
            .padding(.horizontal)
            .padding(.top, 8)
            
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(lista) { ordine in
                        // Prendo tutti i fornitori dell'ordine
                        let fornitori = ordine.ordineOggetti.map { $0.oggetto.fornitore }.joined(separator: ", ")
                        
                        ElementoLista(
                            testo: ordine.dataOrdine,
                            descrizione: fornitori
                        ) {
                            print("Hai premuto ordine del \(ordine.dataOrdine)")
                        }
                    }
                }
                .padding()
            }

            
        }
        .padding(.bottom)
    }
}

struct TipoOggetto: Identifiable {
    var id: Int
    var tipoOggetto: String
}
struct Oggetto: Identifiable {
    var id: Int
    var fornitore: String
    var nomeOggetto: String
    var tipoOggetti: [TipoOggetto]
}
struct OrdineOggetti: Identifiable {
    var id: Int
    var oggetto: Oggetto
    var quantita: Int
}
struct Ordine: Identifiable {
    var id: Int
    var dataOrdine: String
    var ordineOggetti: [OrdineOggetti]
    
}
