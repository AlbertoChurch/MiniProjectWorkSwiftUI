import SwiftUI

class RegisterViewModel: ObservableObject {
    @Published var email: String = "" { didSet { correggi() } }
    @Published var password: String = "" { didSet { correggi() } }
    @Published var nome: String = "" { didSet { correggi() } }
    @Published var cognome: String = "" { didSet { correggi() } }
    
    @Published var errore: Bool = false
    
    static var shared = RegisterViewModel()
    
    private init() {}
    
    private func correggi() {
        if (errore){
            errore = !email.contains("@") || !email.contains(".") || password.count < 8 || nome.isEmpty || cognome.isEmpty
        }
    }
    
    func register(){
        if !email.contains("@") || !email.contains(".") || password.count < 8 || nome.isEmpty || cognome.isEmpty {
            errore = true
        } else {
            AuthService.shared.login(email)
        }
    }
    
    func reset(){
        email = ""
        password = ""
        nome = ""
        cognome = ""
        errore = false
    }
}
