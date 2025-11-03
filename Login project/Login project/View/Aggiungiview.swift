import SwiftUI

struct AggiungiView: View {
    @State private var dataOrdine: String = "2025-11-11"
    @State private var nomeOggetto: String = "Oggetto Prova"
    @State private var fornitore: String = "Giovanni"
    @State private var tipoOggetto: String = "Tipo1"
    @State private var quantita: String = "11" //gia scritti per comodita
    
    //errore dinamico
    @StateObject var vm = OrdineViewModel.shared
    
    private func campiValidi() -> Bool {
        return
             !dataOrdine.isEmpty  &&
            !nomeOggetto.isEmpty &&
            !fornitore.isEmpty &&
            !tipoOggetto.isEmpty &&
            Int(quantita) != nil && !quantita.isEmpty
        
    }
    
    private func reset(){
        dataOrdine = ""
        quantita = ""
        nomeOggetto = ""
        fornitore = ""
        tipoOggetto = ""
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("Nuovo Ordine")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                CampoOrdine(
                    nomeCampo: "Data Ordine (Anno-mese-giorno)",
                    testo: $dataOrdine,
                    errore: vm.errore
                ) { vm.errore ? !dataOrdine.isEmpty : true }

                CampoOrdine(
                    nomeCampo: "Nome Oggetto",
                    testo: $nomeOggetto,
                    errore: vm.errore
                ) { vm.errore ? !nomeOggetto.isEmpty : true }

                CampoOrdine(
                    nomeCampo: "Fornitore",
                    testo: $fornitore,
                    errore: vm.errore
                ) { vm.errore ? !fornitore.isEmpty : true }

                CampoOrdine(
                    nomeCampo: "Tipo Oggetto",
                    testo: $tipoOggetto,
                    errore: vm.errore
                ) { vm.errore ? !tipoOggetto.isEmpty : true }

                CampoOrdine(
                    nomeCampo: "Quantità",
                    testo: $quantita,
                    errore: vm.errore
                ) { vm.errore ? (Int(quantita) != nil && !quantita.isEmpty) : true }
                .keyboardType(.numberPad)

                
                Bottone(
                    testo: "Crea Ordine",
                    err: $vm.errore
                ) {
                    if campiValidi() {
                        
                        
                        vm.aggiungi(ordine: Ordine(
                            id: (vm.lista.last?.id ?? 0) + 1,
                            dataOrdine: dataOrdine,
                            ordineOggetti: [
                                OrdineOggetti(
                                    id: ((vm.lista.last?.ordineOggetti.last?.id ?? 0) + 1),
                                    oggetto: Oggetto(
                                        id: Int.random(in: 1000...9999), 
                                        fornitore: fornitore,
                                        nomeOggetto: nomeOggetto,
                                        tipoOggetti: [TipoOggetto(id: Int.random(in: 1...100), tipoOggetto: tipoOggetto)]
                                    ),
                                    quantita: Int(quantita) ?? 0
                                )
                            ]
                        ))
                        
                        reset()
                        
                        vm.errore = false
                        
                        
                    }
                }
                
            }
            .padding()
            .frame(width: 300)
        }
    }
}


