//
//  MainView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 22.04.2023.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    TabView {
      Text("Explore")
        .tabItem {
          Label("Explore", systemImage: "safari")
        }
      Text("Trips")
        .tabItem {
          Label("Trips", systemImage: "bag.fill")
        }
      Text("Saved")
        .tabItem {
          Label("Saved", systemImage: "heart")
        }
      Text("Inbox")
        .tabItem {
          Label("Inbox", systemImage: "tray.fill")
        }
      Text("Profile")
        .tabItem {
          Label("Profile", systemImage: "person")
        }
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
