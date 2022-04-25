//
//  CompareCards3.swift
//  Swift Student Challenge
//
//  Created by Agatha Freitas on 20/04/22.
//

import SwiftUI

struct CompareCards3: View {
    
    @State private var showingPopover = false
    @State private var firstTap = false
    
    public var body: some View {
        VStack {
    
            Text("Compare the cards")
                .font(Font.custom("Avenir", size: 32))
                .bold()
                .padding()
            Spacer()

            Text("Tap the card that represents")
                .font(Font.custom("Avenir", size: 28))
                .padding()
                
            HStack{
                Text("Continuity")
                    .font(Font.custom("Avenir", size: 32))
                    .bold()
                    .padding()
                
                Button(action: {
                    showingPopover = true
                }, label: {
                    Text("?").font(.title3).bold()
                }).frame(width: 32, height: 32)
                    .background(RoundedRectangle(cornerRadius: 48).fill(Color.accentColor))
                    .foregroundColor(Color.white)
            }
            .popover(isPresented: $showingPopover) {
                Text("Elements that are on a line or curve seem more related than elements that aren’t.")
                    .font(.headline)
                    .padding()
            }
            Text("You can get a hint by tapping the question mark")
                .font(Font.custom("Avenir", size: 22))
                .padding()
            
            Spacer()
            
            HStack {
                Card (front: {
                    Image("Continuity")
                        .resizable().scaledToFill()
                }, back: {
                    VStack{
                        Text("Correct answer!")
                            .font(Font.custom("Avenir", size: 24))
                            .bold()
                            .foregroundColor(Color.green)
                            .padding(8)
                        Text("Continuity")
                            .font(Font.custom("Avenir", size: 28))
                    }
                }, action: {
                    if(firstTap == false) {
                        score += 1
                        firstTap = true
                    }
                })
                
                Card (front: {
                    Image("Similarity")
                        .resizable().scaledToFill()
                }, back: {
                    VStack{
                        Text("Wrong answer.")
                            .font(Font.custom("Avenir", size: 24))
                            .bold()
                            .foregroundColor(Color.red)
                            .padding(8)
                        Text("Similarity")
                            .font(Font.custom("Avenir", size: 28))
                    }
                }) {
                    if (firstTap == false){
                        firstTap = true
                    }
                }
            }.padding()
            
            Spacer()
            
            Button (action: {}){
                NavigationLink {
                    Ending()
                } label: {
                    Text("Finish")
                        .font(Font.custom("Avenir", size: 24))
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(minWidth: 120)
                }
            }.buttonStyle(.borderedProminent)
                .controlSize(.large)
                .padding()

        }.navigationTitle("Compare the cards")
                .navigationBarHidden(true)
    }
}
