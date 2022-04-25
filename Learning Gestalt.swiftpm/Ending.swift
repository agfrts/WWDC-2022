//
//  Ending.swift
//  Swift Student Challenge
//
//  Created by Agatha Freitas on 21/04/22.
//

import SwiftUI

public struct Ending: View {
    
    @State private var showingSheet = false
    @State private var showingPopover = false
    
    public var body: some View {
        
        VStack {
            Spacer()
            
            Text("Game over")
                .font(Font.custom("Avenir", size: 32))
                .bold().padding()
            Text("You have scored")
                .font(Font.custom("Avenir", size: 28)).padding()

            Text("\(score)0 points")
                .font(Font.custom("Avenir", size: 32))
                .bold().padding()
            
            if(score<3){
                Text("That is okay if you didn't answer all the questions correctly... \nYou can always try again, what really matters is that you're learning something new!💡")
                    .font(Font.custom("Avenir", size: 22))
                    .multilineTextAlignment(.center)
                    .padding(80).lineSpacing(8)
            }else{
                Text("Congratulations! You got all the answers right!")
                    .font(Font.custom("Avenir", size: 22))
                    .multilineTextAlignment(.center)
                    .padding(80).lineSpacing(8)
            }
            Spacer()

            Button("About this playground"){
                showingSheet.toggle()
            }.sheet(isPresented: $showingSheet) {
                SheetView()
            }.padding()
                .background(RoundedRectangle(cornerRadius: 16)
                .fill(Color.accentColor))
                .foregroundColor(Color.white)
                .font(Font.custom("Avenir", size: 24).bold())
                .padding(10)
            
            NavigationLink {
                Introduction()
            } label: {
                Text("Go back to Introduction")
                    .font(Font.custom("Avenir", size: 24))
                    .bold().padding()
            }.padding()
            .onAppear(){
                score = 0
            }
            
        }.navigationTitle("Learning Gestalt")
            .navigationBarHidden(true)
    }
}
