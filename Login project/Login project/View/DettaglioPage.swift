import SwiftUI

struct DettaglioPage: View {
    var ordine: Ordine
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Dettaglio Ordine \(ordine.id)")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Data Ordine: \(ordine.dataOrdine)")
                .font(.title2)
                .foregroundColor(.gray)
                .padding(.vertical, 7)
            
            Divider()
            
            ScrollView{
           
            ForEach(ordine.ordineOggetti) { ordineOggetto in
                VStack(alignment: .leading, spacing: 10) {
                    Text("Oggetto: \(ordineOggetto.oggetto.nomeOggetto)")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    
                        Text("Quantità: \(ordineOggetto.quantita)")
                            .font(.body)
                    
                    
                    
                        Text("Fornitore: \(ordineOggetto.oggetto.fornitore)")
                            .font(.body)
                        
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(ordineOggetto.oggetto.tipoOggetti) { tipo in
                            Text("Tipo: \(tipo.tipoOggetto)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.leading, 10)
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color.cyan.opacity(0.2))
                .cornerRadius(10)
                
            }
        }
            Spacer()
        }
        .padding(10)
        .navigationTitle("Dettaglio ordine")
        .navigationBarTitleDisplayMode(.inline)
    }
}

