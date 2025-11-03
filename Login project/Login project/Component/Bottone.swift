import SwiftUI

struct Bottone: View {
    var testo: String
    @Binding var err: Bool
    var azione : ()->()
    
    var body: some View {
        Button(action: azione){
            Text(testo)
                .font(.headline)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(err  ? .gray : .green )
                .cornerRadius(10)
        }
            
        
    }
}
