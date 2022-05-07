//
//  ContentView.swift
//  SwiftUIRedux
//
//  Created by chensinyu on 2022/05/07.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack {
            Text("\(store.appState.counter)")
                .padding()
            InputForm()
            Button("Plus") {
                store.dispatch(.increment)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        let appState = AppState()
        let reducer = Reducer()
        let store = Store(appState: appState, reducer: reducer)
        
        ContentView().environmentObject(store)
    }
}
