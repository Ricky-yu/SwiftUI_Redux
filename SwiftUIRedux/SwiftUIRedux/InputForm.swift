//
//  InputForm.swift
//  SwiftUIRedux
//
//  Created by chensinyu on 2022/05/07.
//

import SwiftUI

/// 入力フォーム
struct InputForm: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack {
            TextField("number", value: $store.appState.counter, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300)
                .padding()
                .keyboardType(.decimalPad)
        }
    }
}
