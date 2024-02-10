//
//  EventView.swift
//  volunto_1
//
//  Created by Ong Si Hui on 9/2/24.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack {
                    Button {
                        guitarClicked()
                    } label: {
                        Image("guitar1")
                            .resizable()
                            .frame(width:350, height:300)
                    }
                    
                    Button {
                        soccerClicked()
                    } label: {
                        Image("soccer1")
                            .resizable()
                            .frame(width:350, height:300)
                    }
                    
                    Button {
                        laptopClicked()
                    } label: {
                        Image("laptop1")
                            .resizable()
                            .frame(width:350, height:300)
                    }
                    
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            }
        }
    func guitarClicked() {
        // Instantiate InboxView
            let EventClickedGuitar = EventClickedGuitar()
            
            // Create UIHostingController to present InboxView
            let hostingController = UIHostingController(rootView: EventClickedGuitar)
            
            // Get the window scene and its root view controller
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                return
            }
            
            // Present InboxView
            window.rootViewController?.present(hostingController, animated: true, completion: nil)
    }
    
    func soccerClicked() {
        // Instantiate InboxView
            let EventClickedSoccer = EventClickedSoccer()
            
            // Create UIHostingController to present InboxView
            let hostingController = UIHostingController(rootView: EventClickedSoccer)
            
            // Get the window scene and its root view controller
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                return
            }
            
            // Present InboxView
            window.rootViewController?.present(hostingController, animated: true, completion: nil)
    }
    
    func laptopClicked() {
        // Instantiate InboxView
            let EventClickedLaptop = EventClickedLaptop()
            
            // Create UIHostingController to present InboxView
            let hostingController = UIHostingController(rootView: EventClickedLaptop)
            
            // Get the window scene and its root view controller
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                return
            }
            
            // Present InboxView
            window.rootViewController?.present(hostingController, animated: true, completion: nil)
    }
    
    }

#Preview {
    EventView()
}
