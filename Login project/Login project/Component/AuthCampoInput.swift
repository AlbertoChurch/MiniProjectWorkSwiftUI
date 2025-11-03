import SwiftUI

struct AuthCampoInput: View {
    var nomeCampo: String
    @Binding var testo : String
    var IsPsw : Bool
    var errore : Bool
    var condizione : () -> Bool 
    
    var body: some View {
        VStack{
            
            Text(nomeCampo).bold()
            
            HStack{
                if IsPsw {
                    Image(systemName: "key.fill")
                    SecureField(nomeCampo, text: $testo)
                    
                } else {
                    Image(systemName: "person.fill")
                    TextField(nomeCampo, text: $testo).textContentType(.emailAddress)
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
}
