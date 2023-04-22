//
//  ButtonsModifier.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 30.03.2022.
//

import SwiftUI

struct BlueButton: ButtonStyle {
  
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: AdaptivePaddings.loginButton, height: 48)
      .foregroundColor(Color.white)
      .background(Color.ui.loginButton)
      .cornerRadius(20)
  }
}

struct WhiteButton: ButtonStyle {
  
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .frame(width: AdaptivePaddings.loginButton, height: 48)
      .foregroundColor(Color.black)
      .background(Color.white)
      .cornerRadius(20)
  }
}
  struct MiniBlueButton : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
      configuration.label
        .frame(width: 160, height: 40)
        .foregroundColor(.white)
        .background(Color.ui.loginButton)
        .cornerRadius(20)
    }
  }



