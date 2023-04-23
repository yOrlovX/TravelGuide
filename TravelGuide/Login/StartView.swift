//
//  StartedView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 30.03.2022.
//

import SwiftUI

enum ViewStates {
  case starter
  case loginOrCreateAccount
  case login
  case register
  case forgotPassword
}

struct StartView: View {
  @State private var viewState: ViewStates = .starter
  
  var body: some View {
    ZStack {
      switch viewState {
      case .starter:
        startedState
      case .loginOrCreateAccount:
        loginOrCreateAccountState
      case .login:
        LoginView(viewState: $viewState)
      case .register:
        CreateAccountView(viewState: $viewState)
      case .forgotPassword:
        ForgotPasswordView(viewState: $viewState)
      }
    }
  }
}


extension StartView {
  
  private var startedState: some View {
    ZStack {
      GeometryReader { proxy in
        let frame = proxy.frame(in: .global)
        Image("bg")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: frame.width, height: frame.height)
      }
      VStack(spacing: 6) {
        Image("Logo")
          .resizable()
          .frame(width: 75, height: 75)
        Text("Travel Guide")
          .font(.system(size: 28, weight: .bold))
          .foregroundColor(Color.white)
        Text("Find your best place for...")
          .font(.system(size: 16, weight: .medium))
          .foregroundColor(Color.white)
        Spacer()
      }
      .padding(.top, 88)
      VStack(spacing: 20) {
        Spacer()
        Button("Get Started", action: { self.viewState = .loginOrCreateAccount })
          .buttonStyle(BlueButton())
        HStack(spacing: 2) {
          Text("Already have an Account?")
            .font(.system(size: 14, weight: .regular))
            .foregroundColor(Color.white)
          Button("Log In", action: {})
            .font(.system(size: 14, weight: .medium))
        }
        .padding(.bottom, 83)
      }
    }
    .ignoresSafeArea()
  }
  
  private var loginOrCreateAccountState: some View {
    ZStack {
      Image("bg-img")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .padding(.top, 150)
        .padding(.bottom, 150)
      VStack(spacing: 4) {
        Text("Plan your trips")
          .foregroundColor(Color.white)
          .font(.system(size: 28, weight: .bold))
        Text("Connect with other travellers")
          .foregroundColor(Color.gray)
          .font(.system(size: 16, weight: .medium))
        Spacer()
        VStack(spacing: 20) {
          Button("Log In", action: { self.viewState = .login })
            .buttonStyle(BlueButton())
          Button("Create Account", action: {  self.viewState = .register })
            .buttonStyle(WhiteButton())
        }
      }
      .padding(.top, 88)
      .padding(.bottom, 163)
    }
    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    .background(Color.black)
  }
}

struct StartView_Previews: PreviewProvider {
  static var previews: some View {
    StartView()
  }
}


