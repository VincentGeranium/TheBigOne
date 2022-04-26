//
//  View+.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/26.
//

import Foundation
import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        return self.modifier(ProfileNameModifier())
    }
    
    func bioEditorStyle() -> some View {
        return self.modifier(BioEditorModifier())
    }
}
