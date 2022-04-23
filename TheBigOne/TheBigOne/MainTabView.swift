//
//  MainTabView.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
            LocationShopListView()
                .tabItem {
                    Label("Shop", systemImage: "building")
                }
            
            LocationMapView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
        .accentColor(.accentColor)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
