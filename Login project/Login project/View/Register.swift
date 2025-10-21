import SwiftUI

struct Register: View {
    @StateObject private var vm = LoginViewModel.singleton
    
    var body: some View {
        NavigationStack {
            Text("Registrati")
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding()

            Testopers(title: "username",
                      valore: $vm.username,
                      IsPsw: false,
                      errore: vm.errore) {
                if vm.errore {
                    return !vm.username.isEmpty
                } else {
                    return true
                }
            }

            Divider()

            Testopers(title: "Password",
                      valore: $vm.password,
                      IsPsw: true,
                      errore: vm.errore) {
                if vm.errore {
                    return vm.password.count >= 8
                } else {
                    return true
                }
            }

            Divider()

            Bottone(testo: "Registrati", usn: $vm.username, psw: $vm.password,
                    err: $vm.errore,
                    funzione: vm.controllore)
            NavigationLink("Hai già un account? Accedi", destination: Login( )).navigationBarBackButtonHidden(true)
        }
        .frame(width: 300, height: 250)
    }
}

#Preview {
    Register()
}
