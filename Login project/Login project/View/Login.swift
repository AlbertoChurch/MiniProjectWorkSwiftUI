import SwiftUI

struct Login: View {
    @ObservedObject var vm = LoginViewModel.shared
    
    var body: some View {
            Text("Login")
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding()
            
            VStack {
                AuthCampoInput(
                    nomeCampo: "Email",
                    testo: $vm.email,
                    IsPsw: false,
                    errore: vm.errore
                ) {
                    vm.errore ? (vm.email.contains("@") && vm.email.contains(".")) : true
                }

                Divider()

                AuthCampoInput(
                    nomeCampo: "Password",
                    testo: $vm.password,
                    IsPsw: true,
                    errore: vm.errore
                ) {
                    vm.errore ? (vm.password.count >= 8) : true
                }

                Divider()
                
                Bottone(testo: "Login",
                        err: $vm.errore,
                        azione: vm.login)
                
                Button("Non hai un account? Registrati"){ AuthService.shared.toLogin = false}.font(.headline)
            }.onAppear {
                vm.reset()
            }
            .frame(width: 300, height: 250)
        }
}


#Preview {
    Login()
}

