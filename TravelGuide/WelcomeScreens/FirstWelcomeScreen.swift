//
//  FirstWelcomeScreen.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 31.03.2022.
//

import SwiftUI

struct FirstWelcomeScreen: View {
    var body: some View {
      ZStack {
        VStack {
          Text("Get inspiration \nfor your next trip")
            .font(.system(size: 28, weight: .bold))
            .foregroundColor(.white)
          
          HStack {
            ScrollView(.horizontal, showsIndicators: false) {
              HStack(alignment: .center, spacing: 12) {
                Image("p1")
                  .resizable()
                  .frame(width: 148,height: 250)
                  .clipShape(RoundedRectangle(cornerRadius: 20))
                Image("p2")
                  .resizable()
                  .frame(width: 148,height: 250)
                  .clipShape(RoundedRectangle(cornerRadius: 20))
                Image("p3")
                  .resizable()
                  .frame(width: 148,height: 250)
                  .clipShape(RoundedRectangle(cornerRadius: 20))
                Image("p4")
                  .resizable()
                  .frame(width: 148,height: 250)
                  .clipShape(RoundedRectangle(cornerRadius: 20))
                Image("p5")
                  .resizable()
                  .frame(width: 148,height: 250)
                  .clipShape(RoundedRectangle(cornerRadius: 20))
              }
            }
          }
          .padding(.bottom, 32)
          
          Text("We’re happy to share our best tips for \ndestinations where you can relax. But you \nfind the nicest city trips as well!")
            .foregroundColor(.gray)
            .multilineTextAlignment(.center)
            .padding(.bottom, 90)
          
          VStack {
            HStack(alignment: .center, spacing: 0) {
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

struct FirstWelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstWelcomeScreen()
    }
}
