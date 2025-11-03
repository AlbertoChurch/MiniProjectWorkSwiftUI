//
//  Login_projectApp.swift
//  Login project
//
//  Created by d7 on 17/10/25.
//

import SwiftUI

@main
struct Login_projectApp: App {
    
    @StateObject private var auth = AuthService.shared
    
    var body: some Scene {
        WindowGroup {
            if auth.isLogged {
                Mainview()
            } else {
                if auth.toLogin{
                    Login()
                } else {
                    Register()
                }
            }
        }
    }
}


