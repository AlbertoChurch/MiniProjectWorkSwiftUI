import SwiftUI

struct Login: View {
    @ObservedObject var vm = LoginViewModel.singleton
    
    var body: some View {
        NavigationStack {
            Text("Login")
                .fontWeight(.bold)
                .font(.largeTitle)
                .padding()
            
            VStack {
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
                
                Bottone(testo: "Login", usn: $vm.username, psw: $vm.password,
                        err: $vm.errore,
                        funzione: vm.controllore)
                
                NavigationLink("Non hai un account? Registrati", destination: Register()).font(.headline).navigationBarBackButtonHidden(true)
                
            }
            .frame(width: 300, height: 250)
        }
    }
}

#Preview {
    Login()
}

