//
//  ContentView.swift
//  RandomJokes
//
//  Created by Sebastian Frosch on 14.04.23.
//

import SwiftUI

struct RandomJokesView: View {
    
    
    @State var punchlineOpacity = 0.0
    @State var currentRandomJokes = exampleRandomJokes
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Yousee, mountain aren't just funny ")
                Text(currentRandomJokes.setup)
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Button (action: {
                    withAnimation(.easeIn(duration: 1.0)) {
                        punchlineOpacity = 1.0
                    }
                }, labellabel: {
                    Image(systemName: "arrow.down.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                        .tint(.black)
                })
                Text("They are hill areas.")
                Text(currentRandomJokes.punchline)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .opacity(punchlineOpacity)
            }
            .navigationTitle("Random Jokes")
        }
    }
}
struct RandomJokes_previews: PreviewProvider{
    static var previews: some View{
        RandomJokesView()
        
    }
    
