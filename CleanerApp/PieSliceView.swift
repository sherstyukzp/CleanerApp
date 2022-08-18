//
//  PieSliceView.swift
//  CleanerApp
//
//  Created by Ярослав Шерстюк on 15.08.2022.
//

import SwiftUI

struct PieSliceView: View {
    var pieSliceData: PieSliceData
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height = width
                
                let center = CGPoint(x: width * 0.5, y: height * 0.5)
                
                path.move(to: center)
                
                path.addArc(
                    center: center,
                    radius: width * 0.5,
                    startAngle: Angle(degrees: -90.0) + pieSliceData.startAngle,
                    endAngle: Angle(degrees: -50.0) + pieSliceData.endAngle,
                    clockwise: false)
                
            }
            .fill(pieSliceData.color)
        }
        .aspectRatio(1, contentMode: .fit)
    }
}

struct PieSliceData {
    var startAngle: Angle
    var endAngle: Angle
    var color: Color
}

struct PieSliceView_Previews: PreviewProvider {
    static var previews: some View {
        PieSliceView(pieSliceData: PieSliceData(
            startAngle: Angle(degrees: 120.0),
                      endAngle: Angle(degrees: 200.0),
                      color: Color.black))
    }
}


