//
//  ForgotPasswordView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 30.03.2022.
//

import SwiftUI

struct ForgotPasswordView: View {
  
  @State private var email: String = ""
  
  @Binding var viewState: ViewStates
  
  var body: some View {
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
          TextField("Your email", text: $email)
            .padding()
            .frame(width: UIScreen.main.bounds.width - 48, height: 48)
            .background(.white)
            .cornerRadius(20)
          Button("Send Password", action: { })
            .buttonStyle(BlueButton())
        }
        .padding(.top, 24)
        Button("I remember the password", action: { self.viewState = .login })
          .font(.system(size: 14, weight: .regular))
          .foregroundColor(.gray)
          .padding(.top, 120)
      }
    }
    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    .background(.black)
  }
}

struct ForgotPasswordView_Previews: PreviewProvider {
  static var previews: some View {
    ForgotPasswordView(viewState: .constant(.forgotPassword))
  }
}
