//
//  UserList.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 2/25/23.
//

import SwiftUI

struct UserList: View {
    var body: some View {
        NavigationView{
            
            List(users, id: \.userId){
                user in
                NavigationLink {
                    UserDetail(user: user)
                } label: {
                    UserRow(user: user)
                }
            }
            .background(.white)
            .padding(.top, -20)
            .scrollContentBackground(.hidden)
            .frame(height: 700)
//            .offset(y:20)
//            .background(.red)
//            .padding([.top], -30)
        }
        .navigationTitle("Landmarks")
        .offset(y:10)
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
    }
}
