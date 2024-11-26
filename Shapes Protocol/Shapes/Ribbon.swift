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
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY * (1/4)))
        path.addLine(to: CGPoint(x: rect.maxX * (1/4), y: rect.maxY * (1/2)))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * (3/4)))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * (3/4)))
        path.addLine(to: CGPoint(x: rect.maxX * (3/4), y: rect.maxY * (1/2)))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * (1/4)))
        
        
        return path
    }
}

#Preview {
    Ribbon()
        .padding()
}
