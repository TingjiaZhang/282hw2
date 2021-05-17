//
//  Login.swift
//  ChatApp
//
//  Created by 张廷嘉 on 5/17/21.
//

import SwiftUI

struct Login: View {
    
    @State var email=""
    @State var password=""
    @ObservedObject var sessionSession = SessionStore()
    
    var body: some View {
        
        NavigationView{
            VStack{
                TextField("email:",text:$email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("password:",text:$password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                Button(action: {
                    sessionSession.signIn(email: email,password: password)
                }, label: {
                    Text("log in")
                })
                
                Button(action: {
                    sessionSession.signUp(email: email, password: password)
                }, label: {
                    Text("sign up")
                })
            }
                .navigationBarTitle("test 02")
        }
        
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
