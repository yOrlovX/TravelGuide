//
//  Honeycomb.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 01.04.2022.
//

import SwiftUI

struct Honeycomb: View {
  
  let images = ["p1","p2","p3","p4","p5","p4","p2"]
  
    let cols: Int = 4
    let spacing: CGFloat = 20
    let imgsize = CGSize(width: 150, height: 150)
    var diamondWidth: CGFloat { (imgsize.width / 2) * cos(.pi / 6) * 2 }
    var diamondHeight: CGFloat { (imgsize.height / 2) * cos(.pi / 6) * 2 }
        
    var body: some View {
        let gridItems = Array(repeating: GridItem(.fixed(diamondWidth), spacing: spacing), count: cols)

        ScrollView(.horizontal) {
          LazyVGrid(columns: gridItems, alignment: .center, spacing: spacing) {
            ForEach(0..<images.count) { idx in
              HStack(alignment: .center ,spacing: 0) {
                      Image("\(images[idx])")
                            .resizable()
                            .frame(width: imgsize.width, height: imgsize.height)
                            .clipShape(NFTShape())
                            .offset(x: isEvenRow(idx) ? 0 : diamondWidth / 2 + 10 )
                            .offset(y: isEvenRow(idx) ? 0 : diamondHeight - (diamondHeight + 85))
                      
                    }
                    .frame(width: diamondWidth, height: imgsize.height )
                }
            }
          .frame(width: UIScreen.main.bounds.width)
        }
    }
    
    func isEvenRow(_ idx: Int) -> Bool { (idx / cols) % 2 == 0 }
}

struct Honeycomb_Previews: PreviewProvider {
    static var previews: some View {
        Honeycomb()
    }
}
