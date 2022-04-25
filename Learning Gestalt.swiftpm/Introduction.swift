//
//  Introduction.swift
//  Swift Student Challenge
//
//  Created by Agatha Freitas on 20/04/22.
//

import SwiftUI

public var score = 0

public struct Introduction: View {

    public var body: some View {
        VStack () {
            Spacer()
            Text("Learning Gestalt: Theory of Perception\n")
                .font(Font.custom("Avenir", size: 32))
                .bold().padding()
            
            Text("The Gestalt theory is based on the idea that the human brain will attempt to simplify and organize complex images or designs that consist of many elements. It arranges the parts into an organized system that creates a whole unit, rather than various elements. \nThat is called Prägnanz, which means good figure, it is about the simplicity of a figure, the symmetry and order that our brain looks for.\n\nIn the next page you will learn about some principles of Gestalt: Similarity, Proximity, Closure, Continuity, Figure-ground and Focal point.\n\nThen you can play a little game to check if you understood the principles. But don't worry if you forget something, you can get a hint by tapping the question mark.")
                .font(Font.custom("Avenir", size: 24))
                .lineSpacing(8)
                .padding(40)
            
            Spacer()
            
            NavigationLink {
                FlashcardPrinciple()
            } label: {
                Text("Tell me about the principles")
                    .font(Font.custom("Avenir", size: 24))
                    .bold().padding()
            }.padding()
            
        }.navigationTitle("Learning Gestalt")
            .navigationBarHidden(true)
    }
}

