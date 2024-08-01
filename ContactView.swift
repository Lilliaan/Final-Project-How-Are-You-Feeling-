//
//  ContactView.swift
//  Final Project How Are You Feeling?
//
//  Created by Scholar on 8/1/24.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        ZStack {
            Color.sageGreen
                .ignoresSafeArea()
            VStack {
                Text("CONTACT US")
                    .font(.title)
                    .fontWeight(.thin)
                Text("Questions, Concerns, or Quote Suggestions?")
                    .font(.title3)
                    .padding(.horizontal, 10)
                    .multilineTextAlignment(.center)
                
                
                Text("notegardenapp@gmail.com")
                    .foregroundColor(Color.black)
                    .padding(.all, 20)
                    
            }
            
        }
        
    }
    
}


#Preview {
    ContactView()
}
