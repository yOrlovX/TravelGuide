//
//  ImageService.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 25.04.2023.
//

import Foundation
import Combine
import UIKit

class ImageService {
  
  func loadImages(urls: String) -> AnyPublisher<UIImage?, Never> {
    guard let url = URL(string: urls) else { fatalError("bad url") }
    
     return URLSession
      .shared
      .dataTaskPublisher(for: url)
      .receive(on: DispatchQueue.main)
      .map(\.data)
      .compactMap(UIImage.init)
      .catch { _ in Just(nil) }
      .eraseToAnyPublisher()
  }
}
