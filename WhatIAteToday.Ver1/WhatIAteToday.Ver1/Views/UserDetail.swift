//
//  UserDetail.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 2/25/23.
//

import SwiftUI

struct UserDetail: View {
    var user: User
    
    var body: some View {
        VStack {
            BackgroundView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 130)
            CircleImage(image: user.image)
                .offset(y: -135)
                .padding(.bottom, -150)

            VStack(alignment: .leading) {
                Text(user.userName)
                    .font(.title)
                    .padding(0.1)
                Text(user.userBio)
                
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider().padding(0.1)
                
                Text("About Me")
                    .font(.title2)
                    .padding(0.1)
                Text("Uploaded Photos will be displayed here.")
            }
            .padding()

            Spacer()
        }
    }
}

struct BackgroundView: View {
    var body: some View {
        Color(.gray)
    }
}

struct UserDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserDetail(user: users[4])
    }
}
