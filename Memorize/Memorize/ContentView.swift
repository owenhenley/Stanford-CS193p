//
//  ContentView.swift
//  Memorize
//
//  Created by Owen Henley on 26/07/2020.
//  Copyright © 2020 Owen Henley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack() {
            ForEach(0..<4) { index in
                CardView()
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack() {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

