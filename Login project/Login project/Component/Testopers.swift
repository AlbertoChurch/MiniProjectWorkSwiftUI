import SwiftUI

struct Testopers: View {
    var title: String
    @Binding var valore : String
    var IsPsw : Bool
    var errore : Bool
    var condizione : () -> Bool

    var body: some View {
        HStack {
            Image(systemName: IsPsw ? "key.fill" : "person.fill")
            if IsPsw {
                SecureField(title, text: $valore)
            } else {
                TextField(title, text: $valore)
                    .textContentType(.emailAddress)
            }
        }
        .font(.headline)
        .foregroundColor(.black)
        .fontWeight(.bold)
        .frame(maxWidth: .infinity)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(condizione() ? Color.black : Color.red, lineWidth: 2)
        )
    }
}
