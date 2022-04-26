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
                NameBackgroundView()
                
                HStack(spacing: 20) {
                    ZStack {
                        AvatarView(size: 84)
                        EditImage()
                    }
                    .padding(.leading, 12)
                    
                    VStack(spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .profileNameStyle()
                        
                        TextField("Last Name", text: $lastName)
                            .profileNameStyle()
                        
                        TextField("Company Name", text: $companyName)
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                    }
                    .padding(.trailing, 16)
                }
                .padding()
            }
            
            VStack(alignment: .leading) {
                CharacterRemainView(currentCount: bio.count)
                
                TextEditor(text: $bio)
                    .bioEditorStyle()
            }
            .padding(.horizontal, 16)
            
            Spacer()
            
//            var width = self.view.bounds.width / 3
            
            Button {
                
            } label: {
                TBOButton(title: "Create Profile", backgroundColor: .theBigOneBlue)
            }
            .padding(.vertical)

        }
        .navigationTitle("Profile")
    }
}

struct NameBackgroundView: View {
    var body: some View {
        Color(UIColor.secondarySystemBackground)
            .frame(height: 130)
            .cornerRadius(12)
            .padding(.horizontal)
    }
}

struct EditImage: View {
    var body: some View {
        Image(systemName: "square.and.pencil")
            .resizable()
            .scaledToFit()
            .frame(width: 14, height: 14)
            .foregroundColor(.white)
            .offset(y: 30)
    }
}

struct CharacterRemainView: View {
    var currentCount: Int
    
    var body: some View {
        Text("Bio: ")
            .font(.callout)
            .foregroundColor(.secondary)
        +
        Text("\(100 - currentCount)")
            .font(.callout)
            .foregroundColor(currentCount <= 100 ? .blue : .red)
        +
        Text(" Charcter remain")
            .font(.callout)
            .foregroundColor(.secondary)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}
