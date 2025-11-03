struct Utente: Identifiable, Codable {
    var id: Int
    var nome: String
    var cognome: String
    var email: String
    var ruolo: Ruolo
    var password: String
}

