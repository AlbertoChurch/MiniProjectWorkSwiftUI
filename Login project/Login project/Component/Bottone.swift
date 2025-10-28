import SwiftUI

struct Bottone: View {
    var testo: String
    @Binding var usn: String
    @Binding var psw: String
    @Binding var err: Bool
    var funzione : () -> Void = { }

    var body: some View {
        Button(action: funzione) {
            Text(testo)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(!err ? Color.green : Color.gray)
                .cornerRadius(10)
        }
    }
}

