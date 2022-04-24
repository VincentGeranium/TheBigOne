//
//  LocationShopListView.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/23.
//

import SwiftUI

struct LocationShopListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                    HStack {
                        Image("default-square-asset")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Location Shop List Name.")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            HStack {
                                AvatarView()
                                AvatarView()
                                AvatarView()
                                AvatarView()
                                AvatarView()
                            }
                        }
                        .padding(.leading)
                    }
                }
            }
            .navigationTitle("Shop Spot")
        }
    }
}

struct LocationShopListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationShopListView()
    }
}

struct AvatarView: View {
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 35)
            .clipShape(Circle())
    }
}
