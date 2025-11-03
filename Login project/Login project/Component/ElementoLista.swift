import SwiftUI
import SwiftUI

struct ElementoLista: View {
    var testo: String
    var descrizione: String? = nil
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 4) {
            Text(testo).font(.headline)
            if let descrizione {
                Spacer()
                Text(descrizione)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color.cyan.opacity(0.2))
        .cornerRadius(8)
        
    }
}








