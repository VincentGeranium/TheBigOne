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
        
        VStack(spacing: 16) {
            BannerImageView(image: "default-shop-banner")
            
            HStack {
                AddressView(address: "1 5 Markert St Ste 40")
                Spacer()
            }
            .padding(.horizontal)
            
            DescriptionView(text: "This is test description. This is test description. This is test description. This is test description. This is test description. This is test description.")
            
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
            
            ScrollView {
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
            }
            
            Spacer()
        }
        .navigationTitle("shop name")
        .navigationBarTitleDisplayMode(.inline)
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

struct BannerImageView: View {
    
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {
    
    var address: String
    
    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .padding(.horizontal)
            .frame(height: 70)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}
