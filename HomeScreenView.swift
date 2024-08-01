//
//  HomeScreenView.swift
//  Final Project How Are You Feeling?
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI

struct HomeScreenView: View {
    
    @State private var currQuote = ""
    @State private var needQuote: Bool = true
    @State private var emotion = ""
    
    let allQuotes = [
        "You may trod me in the very dirt, but still, like dust, I'll rise– Still I Rise by Maya Angelou",
        
        "Sorrow prepares you for joy. It violently sweeps everything out of your house, so that new joy can find space to enter.– Rumi",
        
        "The joy in life is to be used for a purpose. I want to be used up when I die.— George Bernard Shaw",
        
        "We need love as we need water. We need each other as we need the earth we share — Maya Angelou",
        
    
        "Do not go gentle into that good night. Rage, rage against the dying of the light— Do Not Go Gentle by Dylan Thomas",
        

        "Your assumptions are your windows on the world. Scrub them off every once in a while or the light won’t come in. ― Alan Alda, Things I Overheard While Talking to Myself",
        
        "By all means let's be open-minded, but not so open-minded that our brains drop out. ― Richard Dawkins",
        
        "I am the master of my fate: I am the captain of my soul— Invictus by W.E.Henley",
        
        "The sooner we let go of holding on, the sooner we can hold on to the beauty of what's unfolding before us. Nothing was ever meant to stay the same forever.— Julieanne O'Connor",
        
        "Anxiety is the dizziness of freedom. ― Søren Kierkegaard",
        
        "Scared is what you're feeling. Brave is what you're doing. ― Emma Donoghue, Room",
        
        "Worry never robs tomorrow of its sorrow, it only saps today of its joy. —Leo Buscaglia"        
        
    ]
    var body: some View {
        NavigationStack {
            ZStack {
                //Background Color
                Color.offWhite
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("NOTE GARDEN")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 100)
                        .animation(.easeOut(duration: 3.0))
                    
                    HStack {
                        Text("HI, NAME")
                            .font(.title)
                            .fontWeight(.thin)
                            .animation(.easeInOut(duration: 3.0))
                        Image("LineFlower2")
                            .resizable() .aspectRatio(contentMode: .fit) .frame(width: 50, height: 100) .clipShape(Rectangle())
                        
                    }
                    
                    
                    
                    Image("GardenTools")
                        .resizable() .aspectRatio(contentMode: .fill) .frame(width: 175, height: 175) .clipShape(Rectangle())
                    
                    Button(action: {
                        needQuote  = true
                        currQuote = allQuotes[Int.random(in: 0..<allQuotes.count)]
                    }) {
                        Text("Get Your Quote!")
                            .padding(20)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                            .cornerRadius(3)
                            .foregroundColor(.black)
                            .background(.sageGreen)
                    }
                    
                    
                    if (needQuote) {
                        Text("\(currQuote)")
                            .padding(25)
                            .cornerRadius(8)
                            .foregroundColor(.black)
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .fontWeight(.thin)
                        
                        
                        HStack {
                            
                            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                                Image("journal") .resizable() .aspectRatio(contentMode: .fit) .frame(width: 150, height: 100) .clipShape(Rectangle())
                            }
                            
                            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                                Image("record2") .resizable() .aspectRatio(contentMode: .fit) .frame(width: 100, height: 100) .clipShape(Rectangle())
                            }
                            
                            NavigationLink(destination: ContactView()) {
                                Image("contact") .resizable() .aspectRatio(contentMode: .fill) .frame(width: 100, height: 100) .clipShape(Rectangle())
                            }
                            
                        }
                        .padding(.bottom, 10)
                        .padding(.top, 40)
                    }
                }
                
            }
        }
    }
 
}

#Preview {
    HomeScreenView()
}
