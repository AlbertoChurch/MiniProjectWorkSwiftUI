import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email: String = "" { didSet { correggi() } }
    @Published var password: String = "" { didSet { correggi() } }
    
    @Published var errore: Bool = false
    
    static var shared = LoginViewModel()
    
    private init() {}
    
    
    private func correggi() {
        if (errore){
            errore = !email.contains("@") || !email.contains(".") || password.count < 8
        }
    }
    
    func login() {
        if !email.contains("@") || !email.contains(".") || password.count < 8 {
            errore = true
        } else {
            AuthService.shared.login(email)
        }
    }
    
    func reset() {
        email = ""
        password = ""
        errore = false
    }
}
