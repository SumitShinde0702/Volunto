//
//  EventClickedVolunteer.swift
//  volunto_1
//
//  Created by Ong Si Hui on 9/2/24.
//

import SwiftUI

struct EventClickedGuitar: View {
    var body: some View {
        ScrollView {
            Image("guitarEmpty")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height:250)
            Image("guitarPressed")
                .resizable()
                .frame(width: UIScreen.main.bounds.width-50, height:650)
            
        }
        Button {
            print("Hello World")
        } label: {
            Image("joined")
                .resizable()
                .frame(width:200, height:80)
        }
    }
    
}

#Preview {
    EventClickedGuitar()
}
