//
//  ThirdWelcomeScreen.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 03.04.2022.
//

import SwiftUI

struct ThirdWelcomeScreen: View {
  
  @State var isLinkActive = false
  
  var cityData: [CityCellModel] = [CityCellModel(cityName: "Paris",                                      cityPrice: 222),
                                   CityCellModel(cityName: "London", cityPrice: 123),
                                   CityCellModel(cityName: "London", cityPrice: 123),
                                   CityCellModel(cityName: "London", cityPrice: 123)]
  
  var body: some View {
    ZStack {
      VStack {
        Text("Find best deal")
          .font(.system(size: 28, weight: .bold))
          .foregroundColor(.white)
        
        CityCell(cityName: "Rome", cityPrice: "326", cityImageName: "rome")
        HStack {
          CityCell(cityName: "Paris", cityPrice: "50", cityImageName: "paris")
          CityCell(cityName: "New York", cityPrice: "110", cityImageName: "newyork")
        }
        CityCell(cityName: "London", cityPrice: "438", cityImageName: "london")
        
        NavigationLink(destination: CreateAccountView(), isActive: $isLinkActive) {
          Button("Get Started", action: { self.isLinkActive = true })  .buttonStyle(BlueButton())
            .padding(.top, 53)
        }
      }
      .padding()
    }
    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    .background(.black)
  }
}

struct ThirdWelcomeScreen_Previews: PreviewProvider {
  static var previews: some View {
    ThirdWelcomeScreen()
  }
}
