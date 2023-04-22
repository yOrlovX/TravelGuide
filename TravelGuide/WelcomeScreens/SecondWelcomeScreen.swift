//
//  FirstWelcomeScreen.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 31.03.2022.
//

import SwiftUI

struct SecondWelcomeScreen: View {
    var body: some View {
      ZStack {
        VStack {
          Text("Get inspiration \nfor your next trip")
            .font(.system(size: 28, weight: .bold))
            .foregroundColor(.white)
          
//          .padding(.bottom, 32)
          
          Honeycomb()
          
          Text("We’re happy to share our best tips for \ndestinations where you can relax. But you \nfind the nicest city trips as well!")
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .padding(.bottom, 90)
          
          VStack {
            HStack(alignment: .center) {
              Spacer()
              SegmentedProgressView()
                .padding(.leading, 20)
              Spacer()
              Button(action: {}) {
                Image(systemName: "chevron.forward")
                  .frame(width: 24, height: 24)
                  .foregroundColor(.white)
              }
            }
          }
        }
      }
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .background(.black)
    }
}

struct SecondWelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstWelcomeScreen()
    }
}
