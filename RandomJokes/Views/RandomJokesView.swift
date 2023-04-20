//
//  ContentView.swift
//  RandomJokes
//
//  Created by Sebastian Frosch on 14.04.23.
//

import SwiftUI

struct RandomJokesView: View {
    @State var punchlineOpacity = 0.0
    var body: some View {
        NavigationView{
            VStack{
                Text("Yousee, mountain aren't just funny ")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button (action: {
                    punchlineOpacity = 1.0
                }, lable: {
                    Image(systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
                Text("They are hill areas.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .opacity(punchlineOpacity)
            }
            .navigationTitle("Random Jokes")
            
        }
    }
    struct RandomJokes_previews: PreviewProvider{
        static var previews: some View{
            RandomJokesView()
            
        }
        
