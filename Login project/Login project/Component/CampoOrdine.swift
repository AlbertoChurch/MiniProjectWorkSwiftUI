import SwiftUI

struct CampoOrdine: View {
    var nomeCampo: String
    @Binding var testo : String
    var errore : Bool
    var condizione : () -> Bool
    
    var body: some View {
        VStack(alignment: .center){
            Text(nomeCampo).bold()
            HStack{
                Image(systemName: "cart.fill")
                TextField(nomeCampo, text: $testo).textContentType(.emailAddress)
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
