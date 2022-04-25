//
//  FlashcardPrinciple.swift
//  Swift Student Challenge
//
//  Created by Agatha Freitas on 23/04/22.
//

import SwiftUI


public struct FlashcardPrinciple: View {
    
    @State private var firstTap = false

    public var body: some View {
        VStack () {
                Text("Gestalt Principles")
                    .font(Font.custom("Avenir", size: 32))
                    .bold().padding()
                
                Text("Tap on the cards to read the definitions behind")
                    .font(Font.custom("Avenir", size: 24))
                    .padding()
                Spacer()
            
                HStack {
                    Flashcard (front: {
                        Text("Similarity")
                            .font(Font.custom("Avenir", size: 28))                        .bold().padding()
                    }, back: {
                        VStack{
                            //description
                            Text("Similarity is what makes our brain group similar elements (by color, shape, or size), regardless of their proximity.")
                                .font(Font.custom("Avenir", size: 22))
                                .lineSpacing(8).padding()
                        }
                    })
                    Flashcard (front: {
                        Text("Proximity")
                            .font(Font.custom("Avenir", size: 28))
                            .bold().padding()
                    }, back: {
                        VStack{
                            //description
                            Text("Proximity is when we see objects that are close to each other as more related than objects that are far apart.")
                                .font(Font.custom("Avenir", size: 22))
                                .lineSpacing(8).padding()
                        }
                    })
                }
                
                HStack {
                    Flashcard (front: {
                        Text("Closure")
                            .font(Font.custom("Avenir", size: 28))
                            .bold().padding()
                        
                    }, back: {
                        VStack{
                            //description
                            Text("Closure is about the idea that your brain will fill in the missing parts of a design or image to create a whole.")
                                .font(Font.custom("Avenir", size: 22))
                                .lineSpacing(8).padding()
                        }
                    })
                    Flashcard (front: {
                        Text("Continuity")
                            .font(Font.custom("Avenir", size: 28))
                            .bold().padding()
                    }, back: {
                        VStack{
                            //description
                            Text("Continuity is when we see elements that are on a line or curve as more related than elements that aren’t.")
                                .font(Font.custom("Avenir", size: 22))
                                .lineSpacing(8).padding()
                        }
                    })
                }
                
                HStack {
                    Flashcard (front: {
                        Text("Figure & Ground")
                            .font(Font.custom("Avenir", size: 28))
                            .bold().padding()
                        
                    }, back: {
                        VStack{
                            //description
                            Text("Figure & ground is when people instinctively perceive objects as either figure or background.")
                                .font(Font.custom("Avenir", size: 22))
                                .lineSpacing(8).padding()
                        }
                    })
                    Flashcard (front: {
                        Text("Focal Point")
                            .font(Font.custom("Avenir", size: 28))
                            .bold().padding()
                    }, back: {
                        VStack{
                            //description
                            Text("Focal Point are points of interest, emphasis,that capture and hold our attention, making hierarchy.")
                                .font(Font.custom("Avenir", size: 22))
                                .lineSpacing(8).padding()
                        }
                    })
                }
                
                NavigationLink {
                    CompareCards1()
                } label: {
                    Text("Let's play!")
                        .font(Font.custom("Avenir", size: 24))
                        .bold().padding()
                }.padding()
            
            }.navigationTitle("Learning Gestalt")
                .navigationBarHidden(true)
                   
        }
}
