//
//  SheetView.swift
//  Swift Student Challenge
//
//  Created by Agatha Freitas on 20/04/22.
//

import SwiftUI

struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss

    var description = "This playground was developed by Agatha Freitas, a design student that recently entered the Apple Developer Academy in Manaus (Brazil). She loves design and the processes and concepts that it involves.\n\nGestalt was the theme chosen for this challenge because it is one of the first concepts everyone should learn, in the Design field or not. Gestalt and the theory of perception come from psychology, although it is widely used in the design field, it is also important for many other fields.\n\nThe goal of this playground is to allow someone to learn some of the principles of Gestalt through a flashcards gameplay. The reason for this is that people feel more engaged by trying to identify the concept just by looking at the picture."

    var body: some View {
        VStack {
            Text("\nLearning Gestalt")
                .font(Font.custom("Avenir", size: 28)).bold()
                .foregroundColor(Color.black)
                .padding()
            Spacer()

            Text(description)
                .font(Font.custom("Avenir", size: 24))
                .foregroundColor(Color.black)
                .lineSpacing(8)
                .padding(40)
            
            Spacer()
            
            Button("Press to dismiss") {
                dismiss()
            }
            .font(Font.custom("Avenir", size: 24).bold())
            .foregroundColor(.accentColor)
            .padding(40)
        }
    }
}
