//
//  FeedView.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 2/25/23.
//

import SwiftUI

struct FeedView: View {
//    @State var shouldShowImage = false
//    @State var image: UIImage?
    
    var body: some View {
        
        ZStack {
            Image(systemName: "camera.fill").navigationTitle("Feed")
            VStack{
                Spacer()
                HStack(alignment: .center) {
                    Image(systemName: "homekit")
                        .padding(.horizontal, 30.0)
                    NavigationLink(
                        destination: RecipeView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "square.and.pencil")
                            .padding(.horizontal, 30.0)
                    }
                    NavigationLink(
                        destination: FriendsView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "person.2.fill").padding(.horizontal, 30.0)
                    }
                    
                    NavigationLink(
                        destination: ProfileView().navigationBarBackButtonHidden(true)) {
                        Image(systemName: "person.circle")
                        .padding(.horizontal, 30.0)
                    }
                    
                    
                }.frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 80)
                    .background(Color(hue: 0.731, saturation: 0.011, brightness: 0.798))
            }
            .ignoresSafeArea()
        }
//        .navigationViewStyle(StackNavigationViewStyle())
//        .fullScreenCover(isPresented: $shouldShowImage, onDismiss: nil) {
//            ImagePicker(image: $image)
//        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

