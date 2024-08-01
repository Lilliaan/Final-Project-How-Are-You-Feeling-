//
//  ContentView.swift
//  QuestionApp
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var response = ""
    var body: some View {
        
        ZStack{
            
            Color.offWhite
                .ignoresSafeArea()
            
            NavigationStack{
                
                VStack {
                    
                    Text("Which option best represents you today?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    
                    
                    
                    HStack {
                        Button("😜") {
                            response = "Hooray!"
                        }
                        Button("😃") {
                            response = "That's pretty good."
                        }
                        Button("🙂") {
                            response = "Most people are in this zone."
                        }
                        Button("😢") {
                            response = "So sorry to hear that."
                        }
                        Button("😡") {
                            response = "Writing can calm you down!"
                        }
                    }
                    .padding(.top, 50.0)
                    
                    Text(response)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 60.0)
                    
                    NavigationLink(destination: HomeScreenView(), label: {
                        Text("Proceed to Home")
                        
                        NavigationLink(destination: InsideOutView(), label: {
                            Text("Inside Out View")
                            
                            
                            
                            
                        }
                                       
                        )
                        
                    }
                                   
                                   )};
                    
                }
                
            }
        }
    }
