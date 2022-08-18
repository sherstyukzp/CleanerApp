//
//  CustomButtonDuplicateView.swift
//  CleanerApp
//
//  Created by Ярослав Шерстюк on 15.08.2022.
//

import SwiftUI

struct CustomButtonDuplicateView: View {
    
    @State var icon: String = "ic_photos"
    @State var name: String = "Duplicates photos"
    @State var title: String = "120 files"
    @State var subTitle: String = "10 duplicate"
    
    var body: some View {
        
        ZStack {
            Circle().foregroundColor(.white)
                .shadow(color: .black.opacity(0.4), radius: 4, x: 0, y: 6)
            
            ZStack {
                PieSliceView(pieSliceData: PieSliceData(
                    startAngle: Angle(degrees: 100.0),
                    endAngle: Angle(degrees: 220.0),
                    color: Color("buttonColor")))
                Circle().foregroundColor(.white).frame(width: 30, height: 30)
            }
            
            VStack(alignment: .center) {
                VStack {
                    Image(icon)
                    Text(name)
                        .foregroundColor(Color("textColor"))
                        .font(Font.custom("Roboto", size: 10))
                }
                Image(systemName: "chevron.down").foregroundColor(Color("buttonColor"))
                
                VStack {
                    Text(title).foregroundColor(.white)
                        .font(Font.custom("Roboto", size: 13))
                    Text(subTitle)
                        .font(Font.custom("Roboto", size: 8))
                }.padding(5)
            }
        }.frame(width: 110, height: 110)
        
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonDuplicateView()
    }
}
