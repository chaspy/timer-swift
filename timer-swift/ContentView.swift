//
//  ContentView.swift
//  timer-swift
//
//  Created by Takeshi Kondo on 2023/09/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Image("backgroundTimer")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                
                VStack(spacing: 30.0){
                    Text("残り10秒")
                        .font(.largeTitle)
                    
                    HStack {
                        // Start Button
                        Button {
                        } label: {
                            Text("スタート")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color("startColor"))
                                .clipShape(Circle())
                        }
                        
                        // Stop Button
                        Button {
                        } label: {
                            Text("ストップ")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color("stopColor"))
                                .clipShape(Circle())
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink {
                            SettingView()
                        } label: {
                            Text(" 秒数設定")
                            
                        }
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
