//
//  airbnb_clone_bApp.swift
//  airbnb-clone-b
//
//  Created by Alumno on 3/11/23.
//

import SwiftUI

@main
struct airbnb_clone_bApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var appState: AppState = .shared
    
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen{
            case .login:
                LoginView()
            case .main:
                MainView()
            }
        }
    }
}

struct Previews_airbnb_clone_bApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
