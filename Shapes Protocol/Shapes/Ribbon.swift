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
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY * (1/8)))
        path.addLine(to: CGPoint(x: rect.maxX * (1/8), y: rect.maxY * (1/4)))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * (3/8)))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * (3/8)))
        path.addLine(to: CGPoint(x: rect.maxX * (7/8), y: rect.maxY * (1/4)))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * (1/8)))
        
        
        return path
    }
}

#Preview {
    Ribbon()
        .padding()
}
