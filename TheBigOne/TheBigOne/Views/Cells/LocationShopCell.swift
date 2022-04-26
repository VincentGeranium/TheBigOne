//
//  LocationShopCell.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/26.
//

import Foundation
import SwiftUI

struct LocationShopCell: View {
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading) {
                Text("Location Shop List Name.")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack {
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                    AvatarView(size: 35)
                }
            }
            .padding(.leading)
        }
    }
}

struct LocationShopCell_Priviews: PreviewProvider {
    static var previews: some View {
        LocationShopCell()
    }
}
