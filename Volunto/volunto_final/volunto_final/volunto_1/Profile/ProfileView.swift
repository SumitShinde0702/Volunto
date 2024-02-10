//
//  Profile.swift
//  volunto_1
//
//  Created by Ong Si Hui on 9/2/24.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width:80, height: 80)
                .foregroundColor(Color(.systemGray4))
            
            Text("Ariel Ong")
                .font(.title2)
                .fontWeight(.semibold)
        }
        
        List{
            Section {
                ForEach(SettingOptionsViewModel.allCases) { option in
                    HStack {
                        Image(systemName: option.imageName)
                            .resizable()
                            .frame(width:24, height:24)
                            .foregroundColor(option.imageBackgroundColor)
                        
                        Text(option.title)
                            .font(.subheadline)
                    }
                }
            }
            Section {
                Button("Log Out"){
                    
                }
                Button("Delete Account"){
                    
                }
            }
            .foregroundColor(.red)
        }
    }
}
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
