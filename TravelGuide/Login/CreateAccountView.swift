//
//  CreateAccountView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 30.03.2022.
//

import SwiftUI

struct CreateAccountView: View {
  
  @State var isLinkActive1 = false
  @State var isLinkActive2 = false
    var body: some View {
      NavigationView {
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
              NavigationLink(destination: LoginDoneView(), isActive: $isLinkActive1) {
              Button("Log In", action: { self.isLinkActive1 = true})
                .buttonStyle(BlueButton())
              }
              NavigationLink(destination: SighUpView(), isActive: $isLinkActive2) {
                Button("Create Account", action: { self.isLinkActive2 = true })  .buttonStyle(WhiteButton())
              }
            }
          }
          .padding(.top, 88)
          .padding(.bottom, 163)
          
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .background(Color.black)
      }
      .navigationBarHidden(true)
      .navigationBarBackButtonHidden(true)
      .navigationViewStyle(StackNavigationViewStyle())
      
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
      CreateAccountView()
    }
}
