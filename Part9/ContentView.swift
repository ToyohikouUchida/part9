//
//  ContentView.swift
//  Part9
//
//  Created by 内田豊彦 on 2024/08/27.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    
    var body: some View {
        VStack {
            Button("アラート") {
                isShowAlert = true
            }
            .padding()
        }
        .padding()
        .alert("本当に削除しますか",isPresented: $isShowAlert) {
            Button("OK") {
                
            }
        } message: {
            Text("一度削除したら元に戻どすことは出来ません")
        }
    }
}

#Preview {
    ContentView()
}
