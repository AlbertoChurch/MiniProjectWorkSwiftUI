import SwiftUI

struct Mainview: View {
    var body: some View {
        HStack {
            HStack{
                Image(systemName: "person.fill").foregroundStyle(Color.blue)
                Text(AuthService.shared.email)
            }
            Spacer()
            Button("Logout") {
                AuthService.shared.logout()
            }
            
        }.padding(.horizontal ,20).padding(10)
        
        TabView {
            
            NavigationStack {
                OrdinePage()
            }
            .tabItem {
                Label("Ordini", systemImage: "cart.fill")
            }
            
            DDTview()
                .tabItem {
                    Label("DDT", systemImage: "doc.fill")
                }
            
            MovimentiView()
                .tabItem {
                    Label("Movimenti", systemImage: "location.fill")
                }
            
            AggiungiDDTView()
                .tabItem {
                    Label("Aggiungi DDT", systemImage: "plus")
                }
        }
    }
}


// altre view con un text

struct DDTview: View {
    var body: some View {
        Text("DDT")
            .font(.largeTitle)
    }
}

struct MovimentiView: View {
    var body: some View {
        Text("Movimenti")
            .font(.largeTitle)
    }
}

struct AggiungiDDTView: View {
    var body: some View {
        Text("Aggiungi DDT")
            .font(.largeTitle)
    }
}


#Preview {
    Mainview()
}
