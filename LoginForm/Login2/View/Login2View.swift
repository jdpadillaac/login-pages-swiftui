//
//  Login2View.swift
//  LoginForm
//
//  Created by Jonatan Padilla on 15/06/23.
//

import SwiftUI

struct Login2View: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("20944201")
                    .resizable()
                    .frame(width: 310, height: 300)
                    .scaledToFit()
                
                Spacer()
                    .frame(height: 60)
                
                Buttons()
                
                Spacer()
                    .frame(height: 24)
                
                HStack {
                    Text("New around here?")
                    Text("sign in")
                        .foregroundColor(AppColors.ultramarineBlue)
                }
            }
        }
    }
}

struct Login2View_Previews: PreviewProvider {
    static var previews: some View {
        Login2View()
    }
}


struct Buttons: View {
    
    var body: some View {
        VStack {
        
            NavigationLink {
                SignInView()
            } label: {
                Text("Get started")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .bold()
                .padding()
                .background(AppColors.ultramarineBlue)
                .cornerRadius(20)
            }
            
            Spacer()
                .frame(height: 16)
            
            NavigationLink {
                SignInView()
            } label: {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                    .background(AppColors.brightGray)
                    .cornerRadius(20)
            }
        }
        .padding(.horizontal, 24)
    }
}


