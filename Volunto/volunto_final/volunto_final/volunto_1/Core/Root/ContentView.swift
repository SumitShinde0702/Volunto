//
//  ContentView.swift
//  volunto
//
//  Created by Ong Si Hui on 7/2/24.
//
import SwiftUI
import UIKit

class InboxViewController: UIViewController {
    func toggle() {
    }
}

    struct ContentView: View {
        var body: some View {
            VStack {
                Image("header")
                    .resizable()
                    .frame(width:200, height:75)
                    .padding(.top, 8)
                Button {
                    openGoogleForm()
                } label: {
                    Image("quiz")
                        .resizable()
                        .frame(width:350, height:150)
                        .padding(.top, 15)
                }
                HStack{
                    Text("Current Events")
                        .font(.system(size:22, weight: .medium))
                        .foregroundColor(.black)
                        .padding(.top, 20)
                        .padding(.leading, 18)
                    Spacer()
                    Button("See All >") {
                        seeAllEvents()
                    }
                    .font(.system(size:15, weight: .medium))
                    .foregroundColor(.gray)
                    .padding(.top, 20)
                    .padding(.trailing, 18)
                }
                ScrollView(.horizontal) {
                    HStack{
                        Button {
                            guitarClicked()
                        } label: {
                            Image("guitar")
                                .resizable()
                                .frame(width:120, height:150)
                        }
                        Button {
                            soccerClicked()
                        } label: {
                            Image("soccer")
                                .resizable()
                                .frame(width:120, height:150)
                        }
                        Button{
                            laptopClicked()
                        } label: {
                            Image("laptop")
                                .resizable()
                                .frame(width:120, height:150)
                        }
                    }
                }
                
                HStack{
                    Text("View Certificates")
                        .font(.system(size:22, weight: .medium))
                        .foregroundColor(.black)
                        .padding(.top, 20)
                        .padding(.leading, 18)
                    Spacer()
                    Button("See All >") {
                        seeAllCert()
                    }
                    .font(.system(size:15, weight: .medium))
                    .foregroundColor(.gray)
                    .padding(.top, 20)
                    .padding(.trailing, 18)
                }
                ScrollView(.horizontal){
                    HStack{
                        Button {
                            openCertificate1()
                        } label: {
                            Image("cert1")
                                .resizable()
                                .frame(width:140, height:120)
                        }
                        Button {
                            openCertificate2()
                        } label: {
                            Image("cert2")
                                .resizable()
                                .frame(width:140, height:120)
                        }
                        Button {
                            openCertificate3()
                        } label: {
                            Image("cert3")
                                .resizable()
                                .frame(width:140, height:120)
                        }
                    }
                }
                HStack{
                    Button{
                        openMessage()
                    } label: {
                        Image("message")
                            .resizable()
                            .frame(width:50, height:50)
                            .padding(.top, 30)
                            .padding(.leading, 30)
                    }
                    Spacer()
                    Image("qrcode")
                        .resizable()
                        .frame(width:80, height:80)
                        .padding(.top, 10)
                    Spacer()
                    Button{
                        openProfile()
                    } label: {
                        Image("profile")
                            .resizable()
                            .frame(width:50, height:50)
                            .padding(.top, 30)
                            .padding(.trailing, 30)
                        
                    }
                }
            }
        }
        func openGoogleForm() {
            // Replace "YOUR_GOOGLE_FORM_URL" with the actual URL of your Google Form
            guard let url = URL(string: "https://forms.gle/SCdLzpBFmf3nVFc87") else { return }
            
            // Open the Google Form in the default web browser
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
        func openProfile() {
            let ProfileView = Profile()
            
            // Create UIHostingController to present InboxView
            let hostingController = UIHostingController(rootView: ProfileView)
            
            // Get the window scene and its root view controller
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                return
            }
            
            // Present InboxView
            window.rootViewController?.present(hostingController, animated: true, completion: nil)
        }
        
        func seeAllCert() {
            // Instantiate InboxView
                let CertView = CertView()
                
                // Create UIHostingController to present InboxView
                let hostingController = UIHostingController(rootView: CertView)
                
                // Get the window scene and its root view controller
                guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                      let window = windowScene.windows.first else {
                    return
                }
                
                // Present InboxView
                window.rootViewController?.present(hostingController, animated: true, completion: nil)
        }
        
        func seeAllEvents() {
            // Instantiate InboxView
                let EventView = EventView()
                
                // Create UIHostingController to present InboxView
                let hostingController = UIHostingController(rootView: EventView)
                
                // Get the window scene and its root view controller
                guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                      let window = windowScene.windows.first else {
                    return
                }
                
                // Present InboxView
                window.rootViewController?.present(hostingController, animated: true, completion: nil)
        }
        
        func openMessage() {
            // Instantiate InboxView
                let inboxView = InboxView()
                
                // Create UIHostingController to present InboxView
                let hostingController = UIHostingController(rootView: inboxView)
                
                // Get the window scene and its root view controller
                guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                      let window = windowScene.windows.first else {
                    return
                }
                
                // Present InboxView
                window.rootViewController?.present(hostingController, animated: true, completion: nil)
            }
        
        func openCertificate1() {
            guard let url = URL(string: "https://credsverse.com/credentials/82043fd0-e1bd-463b-bb86-052a0b53b2bb") else { return }
            
            // Open the Google Form in the default web browser
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        func openCertificate2() {
            guard let url = URL(string: "https://credsverse.com/credentials/fbe3221b-3a65-4f4a-a7b3-3f2d95a3740a") else { return }
            
            // Open the Google Form in the default web browser
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
        
        func openCertificate3() {
            guard let url = URL(string: "https://credsverse.com/credentials/055ba52f-b182-4976-b8f4-6f360cb30a84") else { return }
            
            // Open the Google Form in the default web browser
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
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
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
