//
//  CertView.swift
//  volunto_1
//
//  Created by Ong Si Hui on 9/2/24.
//

import SwiftUI

struct CertView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                List {
                    Button{
                        openCertificate1()
                    } label: {
                        Image("cert1")
                        .resizable()
                        .frame(width: 350, height: 300)
                    }
                    Image("cert2")
                        .resizable()
                        .frame(width: 350, height: 300)
                    Image("cert3")
                        .resizable()
                        .frame(width: 350, height: 300)
                    
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            }
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
    }


#Preview {
    CertView()
}
