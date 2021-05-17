//
//  ContentView.swift
//  ChatApp
//
//  Created by 张廷嘉 on 5/17/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var sessionStore = SessionStore()
    
    init() {
        sessionStore.listen()
    }
    
    
    var body: some View {
       Chatlist()
        .fullScreenCover(isPresented:$sessionStore.isAnon, content: {
            Login()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
