//
//  ContentView.swift
//  Swift_Touch_Events
//
//  Created by Charles Parmley on 2/11/22.
//

import SwiftUI

struct ContentView: View {
    
    // @State makes a property mutable
    @State var isSelected: Bool = false // bool for button toggle
    
    var body: some View {
        VStack(spacing: 40){
            
        // --------------INPUT VIA BUTTON---------------
            // Rectangle object for a button
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button(action: {
                isSelected.toggle()
            }, label: { // Text label for button
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            Spacer()
            
        // -------------INPUT VIA TAP GESTURE-------------
            // tap gesture has no visual feedback on touch
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                // for individual taps
//                .onTapGesture { // event code here!!!
//                    isSelected.toggle()
//                }
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()
        }.background(Color.white)
     }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Creating rectangle view
