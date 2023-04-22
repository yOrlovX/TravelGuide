//
//  ForgotPasswordView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 30.03.2022.
//

import SwiftUI

struct ForgotPasswordView: View {
  
  @State var email: String = ""
  @State var isLinkActive1 = false
  @State var isLinkActive2 = false
  
    var body: some View {
      NavigationView {
        ZStack {
          VStack {
            VStack(spacing: 37) {
              Text("Forgot password")
                .font(.system(size: 28, weight: .bold))
              .foregroundColor(.white)
              
              Image("forgotPassword")
              
              Text("Enter your email below to receive your \n password reset instructions")
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(.gray)
            }
            
            VStack(spacing: 20) {
              TextField("  Your email", text: $email)
                .frame(width: UIScreen.main.bounds.width - 48, height: 48)
                .background(.white)
              .cornerRadius(20)
              
              NavigationLink(destination: SendPasswordView(), isActive: $isLinkActive1) {
                Button("Send Password", action: { self.isLinkActive1 = true })  .buttonStyle(BlueButton())
              }
            }
            .padding(.top, 24)
            
            NavigationLink(destination: LoginDoneView(), isActive: $isLinkActive2) {
              Button("I remember the password", action: { self.isLinkActive2 = true })
            }
            .font(.system(size: 14, weight: .regular))
            .foregroundColor(.gray)
            .padding(.top, 120)
              
          }
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .background(.black)
      }
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
      .navigationViewStyle(StackNavigationViewStyle())
  
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
