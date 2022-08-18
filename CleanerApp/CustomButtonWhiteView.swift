//
//  CustomButtonWhiteView.swift
//  CleanerApp
//
//  Created by Ярослав Шерстюк on 15.08.2022.
//

import SwiftUI

struct CustomButtonWhiteView: View {
    @State var icon: String = "ic_allPhotos"
    @State var title: String = "ALL \nPHOTOS"
    var body: some View {
        ZStack {
            Circle().foregroundColor(.white)
                .shadow(color: .black.opacity(0.4), radius: 4, x: 0, y: 6)
            VStack{
                Image(icon)
                Text(title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("textColor"))
                    .font(Font.custom("Roboto", size: 13))
            }
        }
        
    }
}

struct CustomButtonWhiteView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonWhiteView()
    }
}
