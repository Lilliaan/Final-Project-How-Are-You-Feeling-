//
//  InsideOutView.swift
//  Final Project How Are You Feeling?
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct InsideOutView: View {
    @State private var response = ""
    @State private var emotion = ""

    
    
    
    
    
    var body: some View {
        
        
            
            NavigationStack {
                ZStack{
                    Color.offWhite
                        .ignoresSafeArea()
                VStack {
                    
                    Text("Which option best represents you today?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    
                    HStack {
                        
                        Button(action:{response = "It will get better!"
                            emotion = "Sadness"
                            
                        }) {
                            Image("sadness")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                        Button(action:{response = "So glad to hear that. Yay!"
                            emotion = "Joy"
                            
                            
                        }) {
                            Image("Joy2")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        Button(action:{response = "Writing can calm you down!"
                            emotion = "Anger"
                            
                        }) {
                            Image("Anger2")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        Button(action:{response = "Oh no! Why?"
                            emotion = "Disgust"
                            
                        }) {
                            Image("Disgust2")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.bottom, 30.0)
                        }
                        Button(action:{response = "In the end, you will be okay."
                            emotion = "Fear"
                            
                        }) {
                            Image("Fear")
                                .resizable() .aspectRatio(contentMode: .fit) .frame(width: 75, height: 75) .clipShape(Rectangle())
                        }
                    }
                    .padding(.top, 50.0)
                    
                    Text(response)
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 60.0)
                    
                    NavigationLink(destination: HomeScreenView(), label: {
                        if emotion == "Sadness"{
                            Text("Proceed to Home")
                                .fontWeight(.bold)
                                .foregroundColor(Color.darkBlue)
                        }
                        
                        if emotion == "Joy"{
                            Text("Proceed to Home")
                                .fontWeight(.bold)
                                .foregroundColor(Color("darkYellow"))
                        }
                        
                        if emotion == "Anger"{
                            Text("Proceed to Home")
                                .fontWeight(.bold)
                                .foregroundColor(Color.red)
                        }
                        
                        if emotion == "Disgust"{
                            Text("Proceed to Home")
                                .fontWeight(.bold)
                                .foregroundColor(Color("darkGreen"))
                        }
                        
                        if emotion == "Fear"{
                            Text("Proceed to Home")
                                .fontWeight(.bold)
                                .foregroundColor(Color.purple)
                        }
                    
                    
                }
                
                    
                    
               ) }
                
                
                
            }
        
        
        }
    
    
        
    }



}
