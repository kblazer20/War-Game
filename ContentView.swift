//
//  ContentView.swift
//  War Game
//
//  Created by Lucas Jin on 2023-12-30.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "back" //@State property wrapper -> fixes problems with storing values for variables
    @State var cpuCard = "back"
    @State var playerValue = 0
    @State var cpuValue = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
            VStack{
                
                Image("logo")
                    .padding()
                
                HStack{
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                }
                .padding(.horizontal, 45.0)
                

                
                Button(action: {
                    dealCards()
                }, label: {
                    Image("button")
                        .padding(40.0)
                })
                
                
                
                HStack {
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 15.0)
                        Text(String(playerValue))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 15.0)
                        Text(String(cpuValue))
                            .font(.largeTitle)
                    }
                }
                .foregroundColor(.white)
                .padding(.horizontal, 100.0)
            }
        }
    }
    
    func dealCards() {
        //randomize player
        var playerNum = Int.random(in: 2...14)
        playerCard = "card" + String(playerNum)
        //randomize cpu
        var cpuNum = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuNum)
        //update scores
        if playerNum>cpuNum {
            playerValue+=1
        } else if playerNum<cpuNum {
            cpuValue+=1
        }
    }
}

#Preview {
    ContentView()
}
