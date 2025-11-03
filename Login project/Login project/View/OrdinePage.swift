import SwiftUI

struct OrdinePage: View {
    @ObservedObject var vm = OrdineViewModel.shared
    
    var body: some View {
        VStack {
            HStack {
                Button("filtro") { print("Filtro") }
                Spacer()
                Text("lista ordini").font(.headline)
                Spacer()
                NavigationLink(destination: AggiungiView() ){
                    Image(systemName: "plus")
                        .font(.title2)
                        .padding(6)
                }
            }
            .padding(.horizontal)
            .padding(.top, 8)
            
            ScrollView {
                
                VStack(spacing: 8) {
                    ForEach(vm.lista) { ordine in
                        let fornitori = ordine.ordineOggetti.map { $0.oggetto.fornitore }.joined(separator: ", ")
                        
                        NavigationLink( destination : DettaglioPage(ordine: ordine) ) {
                            
                            ElementoLista(
                                testo: ordine.dataOrdine,
                                descrizione: fornitori
                            )
                        }
                    }
                }
                .padding()
            }
        }
        
        
        
        .padding(.bottom)
    }
}

