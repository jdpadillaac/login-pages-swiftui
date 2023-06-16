//
//  SignInView.swift
//  LoginForm
//
//  Created by Jonatan Padilla on 15/06/23.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        ZStack {
            AppColors.brightGray.ignoresSafeArea()
            VStack {
                SigInViewButtons()
                
                Spacer()
                    .frame(height: 40)
                
                Text("Or get a link emailed to you")
                    .foregroundColor(Color.gray)
                
                SigInViewTextField()
                
                Spacer()
                    .frame(height: 16)
                
                SigInViewButton(
                    label: "Sign in with Apple",
                    icon: "apple.logo",
                    labelColor: Color.white,
                    bgColor: AppColors.ultramarineBlue,
                    showIcon: false,
                    action:  {
                        
                    }
                )
                
                Spacer()
                    .frame(height: 40)
            }
            .padding(.horizontal, 32)


        }
    }
}

struct SigInViewTextField: View {
    
    @State var textValue = ""
    
    var body: some View {
        TextField("Work email address", text: $textValue)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .cornerRadius(30)
            .font(.title3)
    }
}


struct SigInViewButtons: View {
    
    var body: some View {
        SigInViewButton(
            label: "Sign in with Apple",
            icon: "apple.logo",
            action:  {
                
            }
        )
        
        Spacer()
            .frame(height: 16)
        
        SigInViewButton(
            label: "Sign in with Google",
            icon: "person",
            labelColor: AppColors.ultramarineBlue,
            action:  {
                
            }
        )
            
    }
}

struct SigInViewButton: View {
    
    let label: String
    let icon: String
    var labelColor: Color?
    var bgColor: Color?
    var showIcon: Bool = true
    let action: () -> Void

    
    var body: some View {
        Button(action: action) {
            if showIcon {
                HStack {
                    Image(systemName: icon)
                        .foregroundColor(labelColor ?? Color.black)
                        .font(.system(size: 20))
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    Text(label)
                        .foregroundColor(labelColor ?? Color.black)
                        .font(.system(size: 20))
                    Spacer()
                }
            } else {
                Text(label)
                    .foregroundColor(labelColor ?? Color.black)
                    .font(.system(size: 20))
            }

        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(bgColor ?? Color.white)
        .cornerRadius(20)
    }
}



struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
