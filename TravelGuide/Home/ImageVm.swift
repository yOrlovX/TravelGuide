//
//  ImageVm.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 25.04.2023.
//

import Foundation
import Combine
import UIKit

class ImageVM: ObservableObject {
  @Published var photos: [UIImage] = []
  let imageService = ImageService()
  
  private var cancellable = Set<AnyCancellable>()
  
  init() {
    getImages()
  }
  
  func getImages() {
    Timer
      .publish(every: 0.1, on: .main, in: .common)
      .autoconnect()
      .output(in: 0..<6)
      .flatMap { _ in
        self.imageService.loadImages(urls: "https://loremflickr.com/320/240")
      }
      .sink { _ in }
      receiveValue: { [weak self] returnedImage in
        guard let image = returnedImage else { return }
        self?.photos.append(image)
      }
      .store(in: &cancellable)
  }
}


struct Photo: Identifiable {
  let id = UUID().uuidString
  let image: UIImage
}

extension UIImage: Identifiable {}
