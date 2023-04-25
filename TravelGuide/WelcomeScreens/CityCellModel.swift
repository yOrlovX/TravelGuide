//
//  CityCellModel.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 03.04.2022.
//

import Foundation


struct CityCellModel {
  
  let cityName: String
  let cityPrice: Int
}

struct CityMockModel: Identifiable {
  let id = UUID()
  let image: String
  let name: String
  
  
  static let cityMockData: [CityMockModel] = [
    CityMockModel(image: "paris", name: "cityName"),
    CityMockModel(image: "rome", name: "cityName"),
    CityMockModel(image: "london", name: "cityName"),
    CityMockModel(image: "newyork", name: "cityName")
  ]
}
