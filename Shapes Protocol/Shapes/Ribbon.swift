//
//  Ribbon.swift
//  Shapes Protocol
//
//  Created by Collin Maillet on 2024-11-26.
//

import SwiftUI

struct Ribbon: Shape {
    func path(in rect: CGRect) -> Path{
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * (1/8), y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX * (7/8), y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        
        return path
    }
}

#Preview {
    Ribbon()
        .padding()
}
