//
//  UserRow.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 2/25/23.
//

import SwiftUI

struct UserRow: View {
    var user: User

    var body: some View {
        HStack {
            user.image
            .resizable()
            .frame(width: 60, height: 60)
            Text(user.userName)

            Spacer()
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UserRow(user: users[0])
            UserRow(user: users[1])
            UserRow(user: users[2])
            UserRow(user: users[3])
            UserRow(user: users[4])
        }
       .previewLayout(.fixed(width: 300, height: 70))
    }
}
