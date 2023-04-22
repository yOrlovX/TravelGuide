//
//  SendPasswordView.swift
//  TravelGuide
//
//  Created by Yaroslav Orlov on 30.03.2022.
//

import SwiftUI

struct SendPasswordView: View {
    var body: some View {
      ZStack {
        VStack {
          Image("mail")
            .resizable()
            .frame(width: 200, height: 200)
            .aspectRatio(contentMode: .fill)
          .cornerRadius(100)
          
          Text("Check your email \n password was send =)")
            .font(.system(size: 28, weight: .bold))
            .foregroundColor(.white)
        }
        .padding(.top, -200)
        
        
        
      }
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .background(.black)
    }
}

struct SendPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        SendPasswordView()
    }
}
