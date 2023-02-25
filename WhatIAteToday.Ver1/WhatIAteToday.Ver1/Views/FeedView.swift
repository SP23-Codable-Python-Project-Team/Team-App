//
//  FeedView.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 2/25/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack {
            Text("Feed").navigationTitle("Feed")
            VStack{
                Spacer()
                HStack(alignment: .center) {
                    Image(systemName: "homekit")
                        .padding(.horizontal, 50.0)
                    NavigationLink(
                        destination: RecipeView()) {
                        Image(systemName: "square.and.pencil")
                            .padding(.horizontal, 50.0)
                    }
                    NavigationLink(
                        destination: ProfileView()) {
                        Image(systemName: "person.circle")
                        .padding(.horizontal, 50.0)
                    }
                    
                    
                }.frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 100)
                    .background(Color(hue: 0.731, saturation: 0.011, brightness: 0.798))
            }
            .ignoresSafeArea()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
