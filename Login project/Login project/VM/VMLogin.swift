import Foundation
import Combine

final class LoginViewModel: ObservableObject {
    @Published var username: String = "huafhhfasiofihsahfia" { didSet { correggi() } }
    @Published var password: String = "jfasfakjffsfs" { didSet { correggi() } }
    @Published var errore: Bool = false
    @Published var notLogged: Bool = false
    
    static var singleton = LoginViewModel()
    
    private init() {}

    
    private func correggi() {
        if (errore){
            errore = username.isEmpty || password.count < 8
        }
    }

    func controllore() {
        if username.isEmpty || password.count < 8 {
            print("ricontrolla")
            errore = true
        } else {
            print("ok")
            username = ""
            password = ""
            errore = false
            notLogged = true
        }
    }
}
