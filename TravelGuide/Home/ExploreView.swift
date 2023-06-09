//
//  HomePageMain.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 09.04.2022.
//

import SwiftUI

struct ExploreView: View {
  
  @State var showSidebar: Bool = false
  @StateObject var imageVM = ImageVM()
  
  let cityData = CityMockModel.cityMockData
  
  var body: some View {
    VStack {
      ScrollView(.vertical) {
        mainSection
        popularDestinationSection
        topToDoSection
        hotelBestDealsSection
      }
    }
    .background(.black)
  }
}
struct ExploreView_Previews: PreviewProvider {
  static var previews: some View {
    ExploreView()
  }
}

extension ExploreView {
  private var mainSection: some View {
    ZStack(alignment: .leading) {
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
    }
  }
  
  private var popularDestinationSection: some View {
    VStack(alignment: .leading) {
      Text("Popular destination")
        .font(.system(size: 16))
        .padding(.vertical, 7)
        .padding(.horizontal, 16)
        .background(.green)
        .cornerRadius(10, corners: [.topRight, .bottomRight])
      ScrollView(.horizontal) {
        HStack(spacing: 16) {
          ForEach(imageVM.photos) { image in
            Image(uiImage: image)
              .resizable()
              .scaledToFill()
              .frame(maxHeight: 130)
              .frame(maxWidth: 200)
              .cornerRadius(20)
              
          }
        }
      }
    }
  }
  
  private var topToDoSection: some View {
    VStack(alignment: .leading) {
      Text("Top to do ")
        .font(.system(size: 16))
        .padding(.vertical, 7)
        .padding(.horizontal, 16)
        .background(.green)
        .cornerRadius(10, corners: [.topRight, .bottomRight])
      ScrollView(.horizontal) {
        HStack(spacing: 16) {
          ForEach(imageVM.photos) { image in
            Image(uiImage: image)
              .resizable()
              .scaledToFill()
              .frame(maxHeight: 309)
              .frame(maxWidth: 148)
              .cornerRadius(20)
              
          }
        }
      }
    }
  }
  
  private var hotelBestDealsSection: some View {
    VStack(alignment: .leading) {
      Text("Hotel Best deals")
        .font(.system(size: 16))
        .padding(.vertical, 7)
        .padding(.horizontal, 16)
        .background(.green)
        .cornerRadius(10, corners: [.topRight, .bottomRight])
      ScrollView(.horizontal) {
        HStack(spacing: 16) {
          ForEach(imageVM.photos) { image in
            Image(uiImage: image)
              .resizable()
              .scaledToFill()
              .frame(maxHeight: 100)
              .frame(maxWidth: 100)
              .cornerRadius(20)
              
          }
        }
      }
    }
  }
}
