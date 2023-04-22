//
//  MainView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 22.04.2023.
//

import SwiftUI

struct MainView: View {
  @State var selectedTab: String = "Explore"
  
  var body: some View {
    
    ZStack {
      Colors.darkGray
        .ignoresSafeArea()
      
      SideMenu(selectedTab: $selectedTab)
      
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}

extension View {
  func getRect() -> CGRect {
    return UIScreen.main.bounds
  }
}
