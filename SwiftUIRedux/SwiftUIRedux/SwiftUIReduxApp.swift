//
//  SwiftUIReduxApp.swift
//  SwiftUIRedux
//
//  Created by chensinyu on 2022/05/07.
//

import SwiftUI

@main
struct SwiftUIReduxApp: App {
    var body: some Scene {
        WindowGroup {
            
            let appState = AppState()
            let reducer = Reducer()
            let store = Store(appState: appState, reducer: reducer)
            
            ContentView().environmentObject(store)
        }
    }
}
