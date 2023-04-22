//
//  CityCell.swift
//  TravelGuide
//
//  Created by Optimus Prime on 01.04.2022.
//

import SwiftUI

struct CityCell: View {
  
  var cityName: String
  var cityPrice: String
  var cityImageName: String
  
  var body: some View {
    
    ZStack(alignment: .bottomTrailing){
      Image("\(cityImageName)")
        .resizable()
        .cornerRadius(20)
        .overlay(Text("\(cityName)")
                  .font(.system(size: 24, weight: .black))
                  .foregroundColor(.white))
        .frame(height: 157, alignment: .bottomTrailing)
      
      RoundedRectangle(cornerRadius: 20)
        .overlay(Text("\(cityPrice)$")
                  .font(.system(size: 16, weight: .medium))
                  .foregroundColor(.white))
      
        .frame(width: 70, height: 40)
    }
  }
}

struct CityCell_Previews: PreviewProvider {
  static var previews: some View {
    CityCell(cityName: "Rome", cityPrice: "326", cityImageName: "rome")
  }
}
