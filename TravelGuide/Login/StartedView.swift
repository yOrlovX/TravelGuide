//
//  StartedView.swift
//  TravelGuide
//
//  Created by Optimus Prime on 30.03.2022.
//

import SwiftUI

struct StartedView: View {
  
  @State var isLinkActive = false
  
  var body: some View {
    NavigationView {
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
          
          NavigationLink(destination: CreateAccountView(), isActive: $isLinkActive) {
            Button("Get Started", action: { self.isLinkActive = true })  .buttonStyle(BlueButton())            
          }
          
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
  }
}

struct StartedView_Previews: PreviewProvider {
  static var previews: some View {
    StartedView()
  }
}


