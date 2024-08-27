//
//  ContentView.swift
//  Part9
//
//  Created by 内田豊彦 on 2024/08/27.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    @State var isShowDialog = false
    
    var body: some View {
        VStack {
            Button("アラート") {
                isShowAlert = true
            }
            .padding()
            Button("ダイアログ"){
                isShowDialog = true
            }
            .padding()
        }
        .padding()
        .alert("本当に削除しますか", isPresented: $isShowAlert)
            {
            Button("削除する", role: .destructive) {
                
            }
            Button("キャンセル", role: .cancel) {
                
            }
            
        } message: {
            Text("一度削除したら元に戻どすことは出来ません")
        }
        
        .confirmationDialog("タイトル", isPresented: $isShowDialog, titleVisibility: .visible) {
            Button("選択肢1"){
                
            }
            Button("選択肢2"){
                
            }
            Button("選択肢3"){
                
            }
            Button("選択肢4"){
                
            }
            
            Button("キャンセル", role: .cancel){
                
            }
        } message: {
            Text("タイトル")
        }
        
    }
}

#Preview {
    ContentView()
}
