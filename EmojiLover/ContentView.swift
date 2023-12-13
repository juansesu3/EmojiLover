//
//  ContentView.swift
//  EmojiLover
//
//  Created by Juan Suarez on 13/12/23.
//

import SwiftUI

enum Emoji: String, CaseIterable  {
    case 👻,😈,👹,👽
}

struct ContentView: View {
    @State var selection: Emoji = .👹
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id:\.self){emoji in Text(emoji.rawValue)}
                }
            }
            .navigationTitle("Emoji Lovers!")
            .pickerStyle(.segmented)
            .padding()
        }
    }
        
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
