//
//  LoginDoneView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 30.03.2022.
//

import SwiftUI

struct LoginView: View {
  
  @State private var login: String = ""
  @State private var password: String = ""
  @Binding var viewState: ViewStates
  
  var body: some View {
    ZStack {
      VStack {
        Text("Log In")
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
        Text("or log in with email")
          .font(.system(size: 14, weight: .regular))
          .foregroundColor(.gray)
          .padding()
        VStack {
          TextField("Login", text: $login)
            .padding()
            .frame(width: AdaptivePaddings.loginButton, height: 48)
            .background(.white)
            .cornerRadius(20)
            .foregroundColor(.black)
          TextField("Password", text: $password)
            .padding()
            .frame(width: AdaptivePaddings.loginButton, height: 48)
            .background(.white)
            .cornerRadius(20)
            .foregroundColor(.black)
            .padding()
          HStack {
            Spacer()
            Button("Forgot password?", action: {self.viewState = .forgotPassword})
              .font(.system(size: 14, weight: .regular))
              .foregroundColor(.gray)
              .padding()
          }
          Button("Log In", action: { })
            .buttonStyle(BlueButton())
          VStack {
            Text("Don’t have an account?")
              .font(.system(size: 14, weight: .regular))
              .foregroundColor(.gray)
              .padding()
            Button("Sign In", action: { self.viewState = .register })
              .frame(width: AdaptivePaddings.loginButton, height: 48)
              .foregroundColor(Color.black)
              .background(Color.white)
              .cornerRadius(20)
          }
          .padding(.top, 120)
        }
      }
      .padding(.top, -88)
    }
    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    .background(Color.black)
  }
}

struct LoginDoneView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView(viewState: .constant(.login))
  }
}
