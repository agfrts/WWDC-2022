//
//  FlippingCards.swift
//  Swift Student Challenge
//
//  Created by Agatha Freitas on 19/04/22.
//

import SwiftUI

public struct Card<Front, Back>: View where Front: View, Back: View {
    var front: () -> Front
    var back: () -> Back
    var action: (()->())?
    
    @State var flipped: Bool = false
    
    @State var cardRotation = 0.0
    @State var contentRotation = 0.0
    
    init(@ViewBuilder front: @escaping () -> Front, @ViewBuilder back: @escaping () -> Back, action: (()->())? = nil) {
        self.front = front
        self.back = back
        self.action = action
    }
    
    public var body: some View {
        ZStack {
            if flipped {
                back()
            } else {
                front()
            }
        }
        .rotation3DEffect(.degrees(contentRotation), axis: (x: 0, y: 1, z: 0))
        .padding()
        .frame(width: 240, height:342)
        .background(RoundedRectangle(cornerRadius: 16)
            .fill(Color("LightGray")))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding()
        .onTapGesture {
            self.action?()
            flipCard()
        }
        .rotation3DEffect(.degrees(cardRotation), axis: (x: 0, y: 1, z: 0))
    }
    
    func flipCard() {
        let animationTime = 0.5
        withAnimation(Animation.linear(duration: animationTime)) {
            cardRotation += 180
        }
        
        withAnimation(Animation.linear(duration: 0.001).delay(animationTime / 2)) {
            contentRotation += 180
            flipped.toggle()
        }
    }
}
