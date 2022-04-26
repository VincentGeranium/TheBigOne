//
//  ProfileView.swift
//  TheBigOne
//
//  Created by Kwangjun Kim on 2022/04/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack {
            ZStack {
                Color(UIColor.secondarySystemBackground)
                    .frame(height: 130)
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                HStack(spacing: 20) {
                    ZStack {
                        AvatarView(size: 84)
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.white)
                            .offset(y: 30)
                    }
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Last Name", text: $lastName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                        TextField("Company Name", text: $companyName)
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                    }
                    .padding(.trailing, 16)
                }
                .padding()
            }
            
            VStack(alignment: .leading) {
                Text("Bio: ")
                    .font(.callout)
                    .foregroundColor(.secondary)
                +
                Text("\(100 - bio.count)")
                    .font(.callout)
                    .foregroundColor(bio.count <= 100 ? .blue : .red)
                +
                Text(" Charcter remain")
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                TextEditor(text: $bio)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1))
                    .frame(height: 100)
            }
            .padding(.horizontal, 16)
            
            Spacer()
            
//            var width = self.view.bounds.width / 3
            
            Button {
                
            } label: {
                Text("Create Profile")
                    .bold()
                    .frame(width:280 ,height: 44)
                    .background(Color(UIColor.systemBlue))
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.vertical)

        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}
