//
//  THOButton.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/26.
//

import Foundation
import SwiftUI

struct TBOButton: View {
    
    var title: String
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .bold()
            .frame(width:280 ,height: 44)
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct TBOButton_Previews: PreviewProvider {
    static var previews: some View {
        TBOButton(title: "Test Button", backgroundColor: .theBigOneBlue)
    }
}
