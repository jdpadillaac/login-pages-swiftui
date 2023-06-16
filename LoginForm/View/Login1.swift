//
//  Login1.swift
//  LoginForm
//
//  Created by Jonatan Padilla on 15/06/23.
//

import SwiftUI

struct Login1: View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue.ignoresSafeArea()
                
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $userName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(0))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(0))
                    
                    Button("Login", action: {
                        
                    })
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                }
                
            }
        }
        .toolbar(.hidden)
    }
}

struct Login1_Previews: PreviewProvider {
    static var previews: some View {
        Login1()
    }
}
