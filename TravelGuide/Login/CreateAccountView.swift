//
//  SighUpView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 31.03.2022.
//

import SwiftUI

struct CreateAccountView: View {
  
  @State private var userName: String = ""
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var confirmPassword = ""
  
    var body: some View {
      ZStack {
        VStack {
          Text("Create Account")
            .font(.system(size: 28, weight: .bold))
          .foregroundColor(Color.white)
          
          HStack(spacing: 13) {
            Button {} label: {
              Image("facebook1")
              Text("Facebook")
                .foregroundColor(.white)
            }
            .frame(width: 157, height: 48)
            .background(Color.ui.facebookButton)
            .cornerRadius(20)
            
            
            Button {} label: {
              Image("twiter")
              Text("Twiter")
                .foregroundColor(.white)
            }
            .frame(width: 157, height: 48)
            .background(Color.ui.twiterButton)
            .cornerRadius(20)
          }
          .padding(.bottom, 40)
          
          Text("or log in with email")
            .font(.system(size: 14, weight: .regular))
            .foregroundColor(.gray)
            .padding()
          
          VStack(spacing: 20) {
            TextField("  Username", text: $userName)
              .frame(width: AdaptivePaddings.loginButton, height: 48)
              .foregroundColor(.black)
              .background(.white)
              .cornerRadius(20)
            
            TextField("  Your email", text: $email)
              .frame(width: AdaptivePaddings.loginButton, height: 48)
              .foregroundColor(.black)
              .background(.white)
              .cornerRadius(20)
            
            TextField("  Password", text: $password)
              .frame(width: AdaptivePaddings.loginButton, height: 48)
              .foregroundColor(.black)
              .background(.white)
              .cornerRadius(20)
            
            TextField("  Confirm password", text: $confirmPassword)
              .frame(width: AdaptivePaddings.loginButton, height: 48)
              .foregroundColor(.black)
              .background(.white)
              .cornerRadius(20)
            
            Button("Sign Up", action: {})
              .buttonStyle(BlueButton())
          }
          .padding(.bottom, 90)
          
          HStack(spacing: 2) {
            Text("Already have an Account?")
              .font(.system(size: 14, weight: .regular))
              .foregroundColor(Color.white)
            
            Button("Log In", action: {})
              .font(.system(size: 14, weight: .medium))
          }
          .padding()
        }
      }
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .background(.black)
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
      CreateAccountView()
    }
}
