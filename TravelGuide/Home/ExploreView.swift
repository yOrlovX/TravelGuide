//
//  HomePageMain.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 09.04.2022.
//

import SwiftUI

struct ExploreView: View {
  
  @State var showSidebar: Bool = false
  
  var body: some View {
    
    ZStack(alignment: .leading) {
//      HomePage(isPresented: $showSidebar)
      VStack {
        
        HStack {
          
          Button(action: {self.showSidebar.toggle()}) {
            Image(systemName: "text.justify")
              .frame(width: 24, height: 24)
              .foregroundColor(.white)
          }
              
            Spacer()
            
            Button(action: {}) {
              Image(systemName: "magnifyingglass")
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
            }
        }
        .padding(.top, 52)
        Spacer()
        
        VStack (alignment: .leading, spacing: 8){
          Text("Rome")
            .font(.system(size: 28, weight: .bold))
            .foregroundColor(.white)

          Text("The city setting is stunning with a \nrich architectural and historical \nheritage")
            .font(.system(size: 16, weight: .medium))
            .foregroundColor(.gray)

          HStack {
            Button("Book now", action: {})
              .buttonStyle(MiniBlueButton())

            Spacer()

            SegmentedProgressView()
          }
        }
      }
     
      .padding(EdgeInsets(top: 0, leading: 24, bottom: 50, trailing: 24))
      .frame(height: UIScreen.main.bounds.height / 2)
      
      
    .background(Image("romeBg").resizable())
    .offset(x: showSidebar ? 60 : 0)
    .animation(.easeIn(duration: 0.5))
    }
    
}


struct ExploreView_Previews: PreviewProvider {
  static var previews: some View {
    ExploreView()
  }
}
}
