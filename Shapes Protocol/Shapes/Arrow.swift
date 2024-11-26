//
//  Arrow.swift
//  Shapes Protocol
//
//  Created by Collin Maillet on 2024-11-26.
//

import SwiftUI

struct Arrow: Shape {
    func path(in rect: CGRect) -> Path{
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY * (2/5)))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * (3/5)))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY * (3/5)))
        path.addLine(to:CGPoint(x: rect.midX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY * (2/5)))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * (2/5)))
        
        
        return path
    }
}

#Preview {
    Arrow()
        .padding()
}
