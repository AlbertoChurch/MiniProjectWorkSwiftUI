import SwiftUI

struct ElementoLista: View {
    var testo: String
    var descrizione: String? = nil
    var action: (() -> Void)

    var body: some View {
        Button(action: { action() }) {
            HStack(alignment: .center, spacing: 4) {
                Text(testo).font(.headline)
                if let descrizione {
                    Spacer()
                    Text(descrizione)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(.lightGray))
            .cornerRadius(8)
        }
        .buttonStyle(.plain)
    }
}
