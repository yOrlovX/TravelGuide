//
//  SideMenu.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 22.04.2023.
//

import SwiftUI

struct SideMenu: View {
  @Binding var selectedTab: String
  @Namespace var animation
  
    var body: some View {
      VStack(alignment: .leading, spacing: 10) {
        Image("Avatar")
          .resizable()
          .scaledToFill()
          .frame(width: 66, height: 66)
          .padding(.top, 50)
        
        VStack(alignment: .leading, spacing: 6) {
          Text("Eduardo Williamson")
            .foregroundColor(.white)
            .font(.system(size: 14, weight: .bold))
          
          Text("San Francisco, CA")
            .foregroundColor(.gray)
            .font(.system(size: 14, weight: .bold))
        }
        
        VStack(alignment: .leading, spacing: 10) {
          TabButton(image: "safari.fill", title: "Explore", selectedTab: $selectedTab, animation: animation)
          TabButton(image: "bag.fill", title: "Trips", selectedTab: $selectedTab, animation: animation)
          TabButton(image: "heart.fill", title: "Saved", selectedTab: $selectedTab, animation: animation)
          TabButton(image: "tray.fill", title: "Inbox", selectedTab: $selectedTab, animation: animation)
          TabButton(image: "person", title: "Profile", selectedTab: $selectedTab, animation: animation)
        }
        .padding(.leading, -15)
        .padding(.top, 50)
        
        Spacer()
        
        TabButton(image: "rectangle.portrait.and.arrow.right", title: "Log out", selectedTab: .constant(""), animation: animation)
          .padding(.leading, -15)
        
        
      }
      .padding()
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

//struct SideMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenu()
//    }
//}
