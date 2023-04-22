//
//  TabButton.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 22.04.2023.
//

import SwiftUI

struct TabButton: View {
  var image: String
  var title: String
  
  @Binding var selectedTab: String
  
  var animation: Namespace.ID
  
    var body: some View {
      Button(action: {
        withAnimation(.spring()){ selectedTab = title }
      }) {
        HStack(spacing: 10) {
          Image(systemName: image)
            .font(.title2)
            .frame(width: 30)
          
          Text(title)
            .fontWeight(.semibold)
        }
      }
      .foregroundColor(selectedTab == title ? Colors.darkGray : .gray)
      .padding(.vertical, 12)
      .padding(.horizontal, 20)
      .background(
        ZStack {
          if selectedTab == title {
            Color.white
              .opacity(selectedTab == title ? 1 : 0)
              .cornerRadius(10, corners: [.topRight, .bottomRight])
              .matchedGeometryEffect(id: "TAB", in: animation)
          }
        }
      )
    }
}

//struct TabButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabButton()
//    }
//}
