import SwiftUI

final class OrdineViewModel : ObservableObject {
    
    @Published var errore: Bool = false
     
    static var shared = OrdineViewModel()
    
    private init() {}
    
    func aggiungi (ordine: Ordine) {
        lista.append(ordine)
    }
    
    
    // dati statici
    @Published var lista: [Ordine] = [
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
        ),
        Ordine(
            id: 2,
            dataOrdine: "2023-11-12",
            ordineOggetti: [
                OrdineOggetti(
                    id: 3,
                    oggetto: Oggetto(
                        id: 3,
                        fornitore: "lucia",
                        nomeOggetto: "ProdottoA",
                        tipoOggetti: [TipoOggetto(id: 1, tipoOggetto: "Tipo1")]
                    ),
                    quantita: 2
                )
            ]
        ),
        Ordine(
            id: 3,
            dataOrdine: "2023-11-13",
            ordineOggetti: [
                OrdineOggetti(
                    id: 4,
                    oggetto: Oggetto(
                        id: 4,
                        fornitore: "paolo",
                        nomeOggetto: "ProdottoB",
                        tipoOggetti: [TipoOggetto(id: 2, tipoOggetto: "Tipo2")]
                    ),
                    quantita: 4
                )
            ]
        ),
        Ordine(
            id: 4,
            dataOrdine: "2023-11-14",
            ordineOggetti: [
                OrdineOggetti(
                    id: 5,
                    oggetto: Oggetto(
                        id: 5,
                        fornitore: "anna",
                        nomeOggetto: "ProdottoC",
                        tipoOggetti: [
                            TipoOggetto(id: 1, tipoOggetto: "Tipo1"),
                            TipoOggetto(id: 2, tipoOggetto: "Tipo2")
                        ]
                    ),
                    quantita: 1
                )
            ]
        ),
        Ordine(
            id: 5,
            dataOrdine: "2023-11-15",
            ordineOggetti: [
                OrdineOggetti(
                    id: 6,
                    oggetto: Oggetto(
                        id: 6,
                        fornitore: "giovanni",
                        nomeOggetto: "ProdottoD",
                        tipoOggetti: [TipoOggetto(id: 1, tipoOggetto: "Tipo1")]
                    ),
                    quantita: 6
                ),
                OrdineOggetti(
                    id: 7,
                    oggetto: Oggetto(
                        id: 7,
                        fornitore: "maria",
                        nomeOggetto: "ProdottoE",
                        tipoOggetti: [TipoOggetto(id: 2, tipoOggetto: "Tipo2")]
                    ),
                    quantita: 3
                )
            ]
        ),
        Ordine(
            id: 6,
            dataOrdine: "2023-11-16",
            ordineOggetti: [
                OrdineOggetti(
                    id: 8,
                    oggetto: Oggetto(
                        id: 8,
                        fornitore: "francesco",
                        nomeOggetto: "ProdottoF",
                        tipoOggetti: [
                            TipoOggetto(id: 1, tipoOggetto: "Tipo1"),
                            TipoOggetto(id: 2, tipoOggetto: "Tipo2")
                        ]
                    ),
                    quantita: 2
                )
            ]
        ),
        Ordine(
            id: 7,
            dataOrdine: "2023-11-17",
            ordineOggetti: [
                OrdineOggetti(
                    id: 9,
                    oggetto: Oggetto(
                        id: 9,
                        fornitore: "elena",
                        nomeOggetto: "ProdottoG",
                        tipoOggetti: [TipoOggetto(id: 2, tipoOggetto: "Tipo2")]
                    ),
                    quantita: 5
                )
            ]
        )
    ]
    
}

