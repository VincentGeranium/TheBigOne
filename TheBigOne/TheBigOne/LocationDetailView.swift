//
//  LocationDetailView.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/25.
//

import SwiftUI

struct LocationDetailView: View {
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Image("default-shop-banner")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 120)
                
                HStack {
                    Label("1 5 Markert St Ste 40", systemImage: "mappin.and.ellipse")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.horizontal)
                
                Text("This is test description. This is test description. This is test description. This is test description. This is test description. This is test description.")
                    .lineLimit(3)
                    .minimumScaleFactor(0.75)
                    .padding(.horizontal)
                
                ZStack {
                    Capsule()
                        .frame(height: 80)
                        .foregroundColor(Color(UIColor.secondarySystemBackground))
                    HStack(spacing: 20) {
                        Button {
                            
                        } label: {
                            LocationActionButton(color: Color(UIColor.systemBlue), imageName: "location.fill")
                        }
                        
                        Link(destination: URL(string: "https://www.apple.com")!) {
                            LocationActionButton(color: Color(UIColor.systemBlue), imageName: "network")
                        }
                        
                        Button {
                            
                        } label: {
                            LocationActionButton(color: Color(UIColor.systemBlue), imageName: "phone.fill")
                        }
                        
                        Button {
                            
                        } label: {
                            LocationActionButton(color: Color(UIColor.systemBlue), imageName: "person.fill.checkmark")
                        }
                    }
                }
                .padding(.horizontal)
                
                Text("Who's Here?")
                    .fontWeight(.bold)
                    .font(.title2)
                
                LazyVGrid(columns: columns) {
                    FirstNameAvatar(firstName: "Jun")
                    FirstNameAvatar(firstName: "Jun")
                    FirstNameAvatar(firstName: "Jun")
                    FirstNameAvatar(firstName: "Jun")
                    FirstNameAvatar(firstName: "Jun")
                    FirstNameAvatar(firstName: "Jun")
                    FirstNameAvatar(firstName: "Jun")
                    FirstNameAvatar(firstName: "Jun")
                    FirstNameAvatar(firstName: "Jun")
                }
                
                Spacer()
            }
            .navigationTitle("shop name")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView()
    }
}

struct LocationActionButton: View {
    var color: Color
    var imageName: String
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 60, height: 60)
                .foregroundColor(color)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
                .foregroundColor(.white)
        }
    }
}

struct FirstNameAvatar: View {
    var firstName: String
    
    var body: some View {
        VStack {
            AvatarView(size: 64)
            
            Text(firstName)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}
