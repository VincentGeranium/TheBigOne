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
                    NavigationLink {
                        LocationDetailView()
                    } label: {
                        LocationShopCell()
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


