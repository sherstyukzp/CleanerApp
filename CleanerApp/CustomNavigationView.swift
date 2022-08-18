//
//  CustomNavigationView.swift
//  CleanerApp
//
//  Created by Ярослав Шерстюк on 15.08.2022.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        HStack {
            Image("ic_nav")
            Spacer()
            Image("ic_clean")
            Text("CLEANER")
                .foregroundColor(.white)
                .font(Font.custom("Roboto", size: 14))
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
