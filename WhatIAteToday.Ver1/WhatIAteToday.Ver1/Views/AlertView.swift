//
//  AlertView.swift
//  WhatIAteToday.Ver1
//
//  Created by Jeewon Koo on 4/5/23.
//

import SwiftUI

struct AlertView: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert(isPresented:$showingAlert) {
            Alert(
                title: Text("Are you sure you want to upload this picture?"),
                primaryButton: .default(Text("Upload")) {
                    print("Deleting...")
                },
                secondaryButton: .cancel()
            )
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
