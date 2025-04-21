//
//  Color+Extension.swift
//  pasacao-hotline
//
//  Created by Jco Bea on 4/21/25.
//

import SwiftUI

struct MockData {
    static var colors: [Color] {
        var array: [Color] = []
        for _ in 0..<30 { array.append(Color.random) }
        return array
    }
}

extension Color {
    static var random: Color {
        Color(
            red: .random(in: 0.0...1.0),
            green: .random(in: 0.0...1.0),
            blue: .random(in: 0.0...1.0)
        )
    }
}
