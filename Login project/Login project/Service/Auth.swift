import SwiftUI

class AuthService : ObservableObject {
    @Published var isLogged : Bool = false
    @Published var toLogin : Bool = true
    @Published var email : String = ""
    
    // implementare nei metodi chiamate al db
    
    func login(_ em : String) {
        toLogin = false
        isLogged = true
        email = em
    }
    
    func logout(){
        toLogin = true
        isLogged = false
        //per email non serve
    }
    
    static var shared = AuthService()
    
    private init() {
    }
}
