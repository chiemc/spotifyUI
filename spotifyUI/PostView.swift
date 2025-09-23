//
//  PostView.swift
//  spotifyUI
//
//  Created by chevy on 9/22/25.
//

import SwiftUI

struct PostView: View {
    @State private var playbackProgress: Double = 0.06
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(.darkGray),
                    Color(red: 18/255, green: 18/255, blue: 18/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "chevron.backward")
                        .rotationEffect(Angle(degrees: 270))
                        .padding(10)
                    
                    Spacer()
                    
                    Text("Liked Songs")
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                    
                }
                
                Spacer()
                
                Image("am")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(7)
                
                
                Spacer()
                
                HStack{
                    Text("No. 1 Party Anthem")
                        .bold()
                        .font(.title2)
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .font(.title)
                        .foregroundStyle(Color(.systemGreen))
                }
                Text("Arctic Monkeys")
                    .font(.subheadline)
                    .foregroundStyle(Color(.lightGray))
                
                Spacer()
                
                Slider(value: $playbackProgress, in: 0...403)
                    .tint(.green)
                    .controlSize(.small)
                
                HStack {
                    Text("0:00")
                        .font(.caption)
                        .foregroundStyle(Color(.lightGray))
                    
                    Spacer()
                    
                    Text("-4:03")
                        .font(.caption)
                        .foregroundStyle(Color(.lightGray))
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "shuffle")
                        .font(.system(size: 25))
                    
                    Spacer()
                    
                    Image(systemName: "backward.end.fill")
                        .font(.system(size: 33))
                    
                    Spacer()
                    
                    Image(systemName: "play.circle.fill")
                        .font(.system(size: 65))
                    
                    Spacer()
                    
                    Image(systemName: "forward.end.fill")
                        .font(.system(size:33))
                    
                    Spacer()
                    
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 25))
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "tv.and.hifispeaker.fill")
                        .font(.headline)
                        .padding(3)
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .font(.headline)
                        .padding(15)
                    
                    Image(systemName: "line.3.horizontal")
                        .font(.headline)
                        .padding(3)
                }
                
            }
            .padding() }
    }
}

#Preview {
    PostView()
        .preferredColorScheme(.dark)
}
