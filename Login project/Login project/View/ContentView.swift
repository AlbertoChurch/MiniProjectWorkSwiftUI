import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Ordini", systemImage: "cart.fill")
                    }
                

                SearchView()
                    .tabItem {
                        Label("DDT", systemImage: "doc.fill")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("Movimenti", systemImage: "location.fill")
                    }
                Add().tabItem {
                    Label("Aggiungi DDT", systemImage: "plus")
                }
            }
        }
    }
}
    
    
    struct HomeView: View {
        var body: some View {
            Text("Home Screen")
                .font(.largeTitle)
        }
    }

    struct SearchView: View {
        var body: some View {
            Text("Search Screen")
                .font(.largeTitle)
        }
    }

    struct ProfileView: View {
        var body: some View {
            Text("Profile Screen")
                .font(.largeTitle)
        }
    }

    struct Add: View {
        var body: some View {
            Text("Add Screen")
                .font(.largeTitle)
    }
}


#Preview {
    ContentView()
}
