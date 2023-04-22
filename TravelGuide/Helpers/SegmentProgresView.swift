//
//  SegmentProgresView.swift
//  TravelGuide
//
//  Created by Optimus Prime on 31.03.2022.
//

import Foundation


import SwiftUI

struct SegmentedProgressView: View {
  var value: Int = 1
  var maximum: Int = 3
  var height: CGFloat = 10
  var spacing: CGFloat = 4
  var selectedColor: Color = .green
  var unselectedColor: Color = .gray.opacity(0.3)
  
  var body: some View {
    HStack(spacing: spacing) {
      ForEach(0 ..< maximum) { index in
        RoundedRectangle(cornerRadius: 5)
          .foregroundColor(index < self.value ? self.selectedColor : self.unselectedColor)
      }
    }
    
    .frame(maxWidth: 42,maxHeight: height)
    .clipShape(Capsule())
  }
}

struct SegmentedProgressView_Previews: PreviewProvider {
  static var previews: some View {
    SegmentedProgressView()
  }
}
