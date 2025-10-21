//
//  Login_projectApp.swift
//  Login project
//
//  Created by d7 on 17/10/25.
//

import SwiftUI

@main
struct Login_projectApp: App {
    @StateObject var vm = LoginViewModel.singleton
    
    var body: some Scene {
            WindowGroup {
                if !vm.notLogged {
                     Login(vm: vm)
                } else {
                    ContentView()
                }
            }
        }
}


