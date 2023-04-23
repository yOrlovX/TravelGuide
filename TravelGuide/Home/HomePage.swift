////
////  HomePage.swift
////  TravelGuide
////
////  Created by Yaroslav Orlov on 09.04.2022.
////
//
//import SwiftUI
//
//struct HomePage: View {
//  
//  @State var offset = false
//  @Binding var isPresented: Bool
//  
//    var body: some View {
//    
//        VStack(spacing: 32) {
//          
//          Button(action: { self.isPresented.toggle()}) {
//            Image(systemName: "text.justify")
//              .frame(width: 24, height: 24)
//              .foregroundColor(.white)
//          }
//          .padding(.top,52)
//          
//          Button("1", action: {})
//          
//          Button("2", action: {})
//          
//        }
//        .frame(width: 68)
//        .frame(height: UIScreen.main.bounds.height / 2, alignment: .top)
//        .background(.black)
//        .animation(.easeIn(duration: 0.3))
//    }
//}
//
//struct HomePage_Previews: PreviewProvider {
//    static var previews: some View {
//      HomePage(isPresented: .constant(false))
//    }
//}
