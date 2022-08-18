//
//  ContentView.swift
//  CleanerApp
//
//  Created by Ярослав Шерстюк on 15.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image("background_bubbles_circle")
                
            }.edgesIgnoringSafeArea(.all)
            VStack {
                CustomNavigationView()
                    .frame(height: 25)
                    .padding(.horizontal, 20)
                
                StorageView()
                    .frame(width: 199, height: 199, alignment: .center)
                    .padding()
                VStack {
                    Spacer()
                    HStack {
                        CustomButtonDuplicateView(icon: "ic_photos", name: "Duplicates photos", title: "120 files", subTitle: "10 duplicate").frame(width: 110, height: 110)
                        VStack {
                            CustomButtonDuplicateView(icon: "ic_screenshots", name: "Duplicates screenshots", title: "12 files", subTitle: "2 duplicate").frame(width: 110, height: 110).padding(.vertical)
                            
                            CustomButtonWhiteView(icon: "is_secret", title: "SECRET \nSTORAGES").frame(width: 110, height: 110)
                        }
                        CustomButtonDuplicateView(icon: "ic_contacts", name: "Duplicates contacts", title: "30 contacts", subTitle: "7 duplicate").frame(width: 110, height: 110)
                    }
                    
                    HStack {
                        CustomButtonWhiteView(icon: "ic_allPhotos", title: "ALL \nPHOTOS").frame(width: 110, height: 110)
                        Spacer()
                        CustomButtonWhiteView(icon: "ic_allVideos", title: "ALL \nVIDEOS").frame(width: 110, height: 110)
                    }.padding(.horizontal, 50)
                        .padding(.top, -15)
                }
                Spacer()
                
            }
        }
        .background {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4413320422, green: 0.4513194561, blue: 0.8535903692, alpha: 1)), Color(#colorLiteral(red: 0.3630599678, green: 0.3931204081, blue: 0.740493536, alpha: 1)), Color(#colorLiteral(red: 0.3022004366, green: 0.3222224712, blue: 0.7060965896, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
