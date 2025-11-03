import SwiftUI

struct Register: View {
    @StateObject private var vm = RegisterViewModel.shared
    
    var body: some View {
        
        
        VStack{
            Text("Registrati")
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding()
            
            AuthCampoInput(nomeCampo: "Nome", testo: $vm.nome, IsPsw: false, errore: vm.errore) {
                vm.errore ? !vm.nome.isEmpty : true
            }

            Divider()

            AuthCampoInput(nomeCampo: "Cognome", testo: $vm.cognome, IsPsw: false, errore: vm.errore) {
                vm.errore ? !vm.cognome.isEmpty : true
            }

            Divider()

            AuthCampoInput(nomeCampo: "Email", testo: $vm.email, IsPsw: false, errore: vm.errore) {
                vm.errore ? (vm.email.contains("@") && vm.email.contains(".")) : true
            }

            Divider()

            AuthCampoInput(nomeCampo: "Password", testo: $vm.password, IsPsw: true, errore: vm.errore) {
                vm.errore ? (vm.password.count >= 8) : true
            }

            
            Divider()
            
            Bottone(testo: "Registrati",
                    err: $vm.errore,
                    azione: vm.register)
            Button("Non hai un account? Registrati"){ AuthService.shared.toLogin = true}.font(.headline)
        }.frame(width: 300, height: 250).onAppear(){vm.reset()}
    }
        
    
}

#Preview {
    Register()
}
