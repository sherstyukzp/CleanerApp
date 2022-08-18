//
//  StorageView.swift
//  CleanerApp
//
//  Created by Ярослав Шерстюк on 15.08.2022.
//

import SwiftUI

struct StorageView: View {
    var body: some View {
        ZStack {
            Circle()
                .strokeBorder(Color.white,lineWidth: 1)
                .background(Circle().foregroundColor(Color.white.opacity(0.15)))
            VStack {
                Text("Your Storage")
                    .font(Font.custom("Roboto", size: 18))
                Text("76%")
                    .font(Font.custom("Roboto", size: 57))
                VStack(alignment: .center, spacing: 5) {
                    HStack {
                        Text("Total memory:")
                        Text("128 GB")
                    }
                    HStack {
                        Text("Available:")
                        Text("24 GB")
                    }
                    HStack {
                        Text("Trash size:")
                        Text("470 MB")
                    }
                }
                
            }.font(Font.custom("Roboto", size: 11))
                .foregroundColor(.white)
        }
    }
}

struct StorageView_Previews: PreviewProvider {
    static var previews: some View {
        StorageView()
    }
}
