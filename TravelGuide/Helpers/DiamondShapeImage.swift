//
//  DiamondShapeImage.swift
//  TravelGuide
//
//  Created by Optimus Prime on 31.03.2022.
//

import SwiftUI

struct DiamondShapeImage: View {
  var body: some View {
    VStack {
      HStack {
        Image("p1")
          .resizable()
          .scaledToFill()
          .frame(width: 75 , height: 75)
          .clipShape(NFTShape())
        
        Image("p2")
          .resizable()
          .scaledToFill()
          .frame(width: 75 , height: 75)
          .clipShape(NFTShape())
        
        Image("p3")
          .resizable()
          .scaledToFill()
          .frame(width: 75 , height: 75)
          .clipShape(NFTShape())
      }
      Image("p2")
        .resizable()
        .scaledToFill()
        .frame(width: 75 , height: 75)
        .clipShape(NFTShape())
      
      Image("p2")
        .resizable()
        .scaledToFill()
        .frame(width: 75 , height: 75)
        .clipShape(NFTShape())
      
      Image("p2")
        .resizable()
        .scaledToFill()
        .frame(width: 75 , height: 75)
        .clipShape(NFTShape())
    }
    
    VStack{
      
      Path { path in
          let width: CGFloat = 200
          let height: CGFloat = 200
          
          path.move(
              to: CGPoint(
                  x: 0.5 * width,
                  y: 0 * height
              )
          )

          path.addLine(
              to: CGPoint(
                  x: 0.5 * width,
                  y: 0 * height)
          )

          path.addLine(
              to: CGPoint(
                  x: 1 * width,
                  y: 0.5 * height)
          )
          
          path.addLine(
              to: CGPoint(
                  x: 0.5 * width,
                  y: 1 * height)
          )
          
          path.addLine(
              to: CGPoint(
                  x: 0.5 * width,
                  y: 1 * height)
          )
          
          path.addLine(
              to: CGPoint(
                  x: 0 * width,
                  y: 0.5 * height)
          )

          path.closeSubpath()
      }
      .stroke(Color.pink, lineWidth: 1)
    }
  }
}

struct DiamondShapeImage_Previews: PreviewProvider {
  static var previews: some View {
    DiamondShapeImage()
  }
}

struct NFTShape: Shape {
    func path(in rect: CGRect) -> Path {
      Path { path in
        let width: CGFloat = rect.width
        let height: CGFloat = rect.height
          
          path.move(
              to: CGPoint(
                  x: 0.5 * width,
                  y: 0 * height
              )
          )

          path.addLine(
              to: CGPoint(
                  x: 0.5 * width,
                  y: 0 * height)
          )

          path.addLine(
              to: CGPoint(
                  x: 1 * width,
                  y: 0.5 * height)
          )
          
          path.addLine(
              to: CGPoint(
                  x: 0.5 * width,
                  y: 1 * height)
          )
          
          path.addLine(
              to: CGPoint(
                  x: 0.5 * width,
                  y: 1 * height)
          )
          
          path.addLine(
              to: CGPoint(
                  x: 0 * width,
                  y: 0.5 * height)
          )

          path.closeSubpath()
      }
//      .stroke(Color.pink, lineWidth: 1)
    }
}


