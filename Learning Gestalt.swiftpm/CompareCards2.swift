//
//  CompareCards2.swift
//  Swift Student Challenge
//
//  Created by Agatha Freitas on 20/04/22.
//

import SwiftUI

struct CompareCards2: View {
    
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
                Text("Closure")
                    .font(Font.custom("Avenir", size: 32))
                    .bold()
                    .multilineTextAlignment(.center)
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
                Text("Our brain will fill in the missing parts of a design or image to create a whole.")
                    .font(.headline)
                    .padding()
            }
            Text("You can get a hint by tapping the question mark")
                .font(Font.custom("Avenir", size: 22))
                .padding()
            
            Spacer()
            
            HStack {
                Card (front: {
                    Image("Closure")
                        .resizable().scaledToFill()
                }, back: {
                    VStack{
                        Text("Correct answer!")
                            .font(Font.custom("Avenir", size: 24))
                            .bold().padding(8)
                            .foregroundColor(Color.green)
                        Text("Closure")
                            .font(Font.custom("Avenir", size: 28))
                            .padding(8)
                    }
                }) {
                    if(firstTap == false) {
                        score += 1
                        firstTap = true
                    }
                }
                Card (front: {
                    Image("Figure-Ground")
                        .resizable().scaledToFill()
                }, back: {
                    VStack{
                        Text("Wrong answer.")
                            .font(Font.custom("Avenir", size: 24))
                            .bold().padding(8)
                            .foregroundColor(Color.red)
                        Text("Figure Ground")
                            .font(Font.custom("Avenir", size: 28))
                            .padding(8)
                    }
                }, action: {
                    if (firstTap == false){
                        firstTap = true
                    }
                })
            }.padding()
            
            Spacer()
           
            Button (action: {}){
                NavigationLink {
                    CompareCards3()
                } label: {
                    Text("Next")
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
