import SwiftUI

struct CompareCards1: View {
    
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
                Text("Focal Point")
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
                    Text("Visually attractive points of interest, emphasis, or difference capture and hold our attention.")
                        .font(.headline)
                        .padding()
            }
            Text("You can get a hint by tapping the question mark")
                .font(Font.custom("Avenir", size: 22))
                .padding()
            
            Spacer()
            
            HStack {
                Card (front: {
                    Image("Focal-Point")
                        .resizable().scaledToFill()
                }, back: {
                    VStack{
                        
                        Text("Correct answer!")
                            .font(Font.custom("Avenir", size: 24))
                            .bold().padding(8)
                            .foregroundColor(Color.green)
                            
                        Text("Focal Point")
                            .font(Font.custom("Avenir", size: 28))
                            .padding(8)
                    }
                }, action: {
                    if(firstTap == false) {
                        score += 1
                        firstTap = true
                    }
                })
                
                Card (front: {
                    Image("Proximity")
                        .resizable().scaledToFill()
                }, back: {
                    VStack{
                        Text("Wrong answer.")
                            .font(Font.custom("Avenir", size: 24))
                            .bold().padding(8)
                            .foregroundColor(Color.red)
                        Text("Proximity")
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
                    CompareCards2()
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
