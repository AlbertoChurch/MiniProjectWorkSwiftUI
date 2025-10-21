import SwiftUI

struct Testopers: View {
    var title: String
    @Binding var valore : String
    var IsPsw : Bool
    var errore : Bool
    var condizione : () -> Bool 
    
    var body: some View {
        
        HStack{
            if IsPsw {
                Image(systemName: "key.fill")
                SecureField(title, text: $valore)
                
            } else {
                Image(systemName: "person.fill")
                TextField(title, text: $valore)
            }
        }.font(.headline)
            .foregroundColor(.black)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .padding().overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(condizione() ? Color.black : Color.red, lineWidth: 2))

        
    }
}
