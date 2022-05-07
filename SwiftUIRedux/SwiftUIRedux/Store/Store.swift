//
//  Store.swift
//  SwiftUIRedux
//
//  Created by chensinyu on 2022/05/07.
//

import Foundation

struct AppState {
    var counter = 0
}

enum Action {
    case increment
}

class Reducer {
    
    func update(_ appState: inout AppState, _ action: Action) {
        switch action {
        case .increment:
            appState.counter += 1
        }
    }
}

class Store: ObservableObject {
    
    var reducer: Reducer
    @Published var appState: AppState
    
    init(appState: AppState, reducer: Reducer) {
        self.appState = appState
        self.reducer = reducer
    }
    
    func dispatch(_ action: Action) {
        self.reducer.update(&appState, action)
    }
}
