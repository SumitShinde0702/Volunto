//
//  InboxView.swift
//  volunto_1
//
//  Created by Ong Si Hui on 9/2/24.
//

import SwiftUI
import UIKit

struct InboxView: View {
        @State private var showNewMessageView = false
        var body: some View {
            NavigationStack {
                ScrollView {
                    ActiveNowView()
                    
                    List {
                        ForEach( 0 ... 10, id: \.self) { message in InboxRowView()
                        }
                    }
                    .listStyle(PlainListStyle())
                    .frame(height: UIScreen.main.bounds.height - 120)
                }
                .fullScreenCover(isPresented: $showNewMessageView, content: {
                    NewMessageView()
                })
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack {
                            
                            Text("Chats")
                                .font(.title)
                                .fontWeight(.semibold)
                            
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            showNewMessageView.toggle()
                        } label: {
                            Image(systemName: "square.and.pencil.circle.fill")
                                .resizable()
                                .frame(width: 32, height:32)
                                .foregroundStyle(.black, Color(.systemGray))
                        }
                    }
                }
            }
        }
    }
#if DEBUG
struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
#endif
