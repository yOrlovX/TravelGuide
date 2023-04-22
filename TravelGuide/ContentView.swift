//
//  ContentView.swift
//  TravelGuide
//
//  Created by Optimus Prime on 30.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    // Controls display of sidebar
    @State var showSidebar: Bool = true
    
    var body: some View {
        SideBarStack(sidebarWidth: 68, showSidebar: $showSidebar) {
//          HomePage()
        } content: {
          HomePageMain()
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
