//
//  CustomModifiers.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/26.
//

import Foundation
import SwiftUI

struct ProfileNameModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}

struct BioEditorModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1))
            .frame(height: 100)
    }
}
